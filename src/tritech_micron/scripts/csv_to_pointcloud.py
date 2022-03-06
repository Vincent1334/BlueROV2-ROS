#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""Tritech Micron CSV to PointCloud.

This script converts a CSV logged by the Tritech Windows utility to ROS
messages.

Note: This does not currently support decoding Tritech's V4LOG file format, so
you must first convert them to CSV using Tritech's Windows utility.
"""

import os
import csv
import sys
import rospy
import bitstring
from datetime import datetime
from sensor_msgs.msg import PointCloud
from geometry_msgs.msg import PoseStamped
from tritech_micron.msg import TritechMicronConfig
from tritech_micron.tools import ScanSlice, to_radians

__author__ = "Anass Al-Wohoush, Max Krogius"


def parse_row(row):
    """Parses row from CSV into a ScanSlice and timestamp.

    Args:
        row: List of columns.

    Returns:
        Tuple of (ScanSlice, timestamp).
    """
    # Extract timestamp.
    timestamp = datetime.strptime(row[1], "%H:%M:%S.%f")

    # Scan angles information.
    left_limit = to_radians(int(row[10]))
    right_limit = to_radians(int(row[11]))
    step = to_radians(int(row[12]))
    heading = to_radians(int(row[13]))
    rospy.loginfo("Heading is now %f", heading)

    # Get the head status byte:
    #   Bit 0:  'HdPwrLoss'. Head is in Reset Condition.
    #   Bit 1:  'MotErr'. Motor has lost sync, re-send Parameters.
    #   Bit 2:  'PrfSyncErr'. Always 0.
    #   Bit 3:  'PrfPingErr'. Always 0.
    #   Bit 4:  Whether adc8on is enabled.
    #   Bit 5:  RESERVED (ignore).
    #   Bit 6:  RESERVED (ignore).
    #   Bit 7:  Message appended after last packet data reply.
    _head_status = bitstring.pack("uint:8", int(row[3]))
    rospy.logdebug("Head status byte is %s", _head_status)
    if _head_status[-1]:
        rospy.logerr("Head power loss detected")
    if _head_status[-2]:
        rospy.logerr("Motor lost sync")

    # Get the HdCtrl bytes to control operation:
    #   Bit 0:  adc8on          0: 4-bit        1: 8-bit
    #   Bit 1:  cont            0: sector-scan  1: continuous
    #   Bit 2:  scanright       0: left         1: right
    #   Bit 3:  invert          0: upright      1: inverted
    #   Bit 4:  motoff          0: on           1: off
    #   Bit 5:  txoff           0: on           1: off (for testing)
    #   Bit 6:  spare           0: default      1: N/A
    #   Bit 7:  chan2           0: default      1: N/A
    #   Bit 8:  raw             0: N/A          1: default
    #   Bit 9:  hasmot          0: lol          1: has a motor (always)
    #   Bit 10: applyoffset     0: default      1: heading offset
    #   Bit 11: pingpong        0: default      1: side-scanning sonar
    #   Bit 12: stareLLim       0: default      1: N/A
    #   Bit 13: ReplyASL        0: N/A          1: default
    #   Bit 14: ReplyThr        0: default      1: N/A
    #   Bit 15: IgnoreSensor    0: default      1: emergencies
    # Should be the same as what was sent.
    hd_ctrl = bitstring.pack("uintle:16", int(row[4]))
    hd_ctrl.byteswap()  # Little endian please.
    inverted, scanright, continuous, adc8on = (
        hd_ctrl.unpack("pad:12, bool, bool, bool, bool"))
    rospy.logdebug("Head control bytes are %s", hd_ctrl.bin)
    rospy.logdebug("ADC8 mode %s", adc8on)
    rospy.logdebug("Continuous mode %s", continuous)
    rospy.logdebug("Scanning right %s", scanright)

    # Decode data settings.
    MAX_SIZE = 255 if adc8on else 15
    range_scale = float(row[5]) / 10
    gain = float(row[6]) / 210
    ad_low = int(row[8]) * 80.0 / MAX_SIZE
    _ad_span = int(row[9]) * 80.0 / MAX_SIZE
    ad_high = ad_low + _ad_span

    # Scan data.
    nbins = int(row[14])
    bins = map(int, row[15:])

    # Generate configuration.
    config = {
        "inverted": inverted,
        "continuous": continuous,
        "scanright": scanright,
        "adc8on": adc8on,
        "gain": gain,
        "ad_low": ad_low,
        "ad_high": ad_high,
        "left_limit": left_limit,
        "right_limit": right_limit,
        "range": range_scale,
        "nbins": nbins,
        "step": step
    }

    slice = ScanSlice(heading, bins, config)
    return (slice, timestamp)


def parse(path, frame):
    """Parses scan logs and publishes LaserScan messages at set frequency.

    This publishes on two topics:
        ~heading: Pose of latest scan slice heading.
        ~scan: Point cloud of the latest scan slice.

    Args:
        path: Path to CSV log.
        frame: Name of sensor frame.
    """
    # Create publishers.
    scan_pub = rospy.Publisher("~scan", PointCloud, queue_size=800)
    heading_pub = rospy.Publisher("~heading", PoseStamped, queue_size=800)
    conf_pub = rospy.Publisher("~config", TritechMicronConfig, queue_size=800)

    with open(path) as data:
        # Read data and ignore header.
        info = csv.reader(data)
        next(info)

        previous = None
        for row in info:
            # Break cleanly if requested.
            if rospy.is_shutdown():
                break

            # Parse row.
            slice, timestamp = parse_row(row)

            # Publish configuration as TritechMicronConfig.
            config = slice.to_config(frame)
            conf_pub.publish(config)

            # Publish heading as PoseStamped.
            posestamped = slice.to_posestamped(frame)
            heading_pub.publish(posestamped)

            # Publish data as PointCloud.
            cloud = slice.to_pointcloud(frame)
            scan_pub.publish(cloud)

            # Sleep to publish at correct rate.
            if previous:
                dt = timestamp - previous
                rospy.sleep(dt.total_seconds())

            previous = timestamp


if __name__ == "__main__":
    # Start node.
    rospy.init_node("tritech_micron")

    # Get parameters.
    path = rospy.get_param("~csv", None)
    frame = rospy.get_param("~frame", "odom")

    if path is None:
        rospy.logfatal("Please specify a file as _csv:=path/to/file.")
        sys.exit(-1)

    # Expand user directory to allow specifying files from relative to ~.
    path = os.path.expanduser(path)

    try:
        parse(path, frame)
    except IOError:
        rospy.logfatal("Could not find file specified.")
    except rospy.ROSInterruptException:
        pass
