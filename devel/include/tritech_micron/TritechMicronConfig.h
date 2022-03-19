// Generated by gencpp from file tritech_micron/TritechMicronConfig.msg
// DO NOT EDIT!


#ifndef TRITECH_MICRON_MESSAGE_TRITECHMICRONCONFIG_H
#define TRITECH_MICRON_MESSAGE_TRITECHMICRONCONFIG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace tritech_micron
{
template <class ContainerAllocator>
struct TritechMicronConfig_
{
  typedef TritechMicronConfig_<ContainerAllocator> Type;

  TritechMicronConfig_()
    : header()
    , inverted(false)
    , continuous(false)
    , scanright(false)
    , adc8on(false)
    , gain(0.0)
    , ad_low(0.0)
    , ad_high(0.0)
    , left_limit(0.0)
    , right_limit(0.0)
    , range(0.0)
    , nbins(0)
    , step(0.0)  {
    }
  TritechMicronConfig_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , inverted(false)
    , continuous(false)
    , scanright(false)
    , adc8on(false)
    , gain(0.0)
    , ad_low(0.0)
    , ad_high(0.0)
    , left_limit(0.0)
    , right_limit(0.0)
    , range(0.0)
    , nbins(0)
    , step(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _inverted_type;
  _inverted_type inverted;

   typedef uint8_t _continuous_type;
  _continuous_type continuous;

   typedef uint8_t _scanright_type;
  _scanright_type scanright;

   typedef uint8_t _adc8on_type;
  _adc8on_type adc8on;

   typedef double _gain_type;
  _gain_type gain;

   typedef double _ad_low_type;
  _ad_low_type ad_low;

   typedef double _ad_high_type;
  _ad_high_type ad_high;

   typedef double _left_limit_type;
  _left_limit_type left_limit;

   typedef double _right_limit_type;
  _right_limit_type right_limit;

   typedef double _range_type;
  _range_type range;

   typedef int16_t _nbins_type;
  _nbins_type nbins;

   typedef double _step_type;
  _step_type step;





  typedef boost::shared_ptr< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> const> ConstPtr;

}; // struct TritechMicronConfig_

typedef ::tritech_micron::TritechMicronConfig_<std::allocator<void> > TritechMicronConfig;

typedef boost::shared_ptr< ::tritech_micron::TritechMicronConfig > TritechMicronConfigPtr;
typedef boost::shared_ptr< ::tritech_micron::TritechMicronConfig const> TritechMicronConfigConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tritech_micron::TritechMicronConfig_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tritech_micron

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'tritech_micron': ['/home/bluerov/Schreibtisch/BlueROV2/src/tritech_micron/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2ca5e1f487382f5a303a19fc2149e230";
  }

  static const char* value(const ::tritech_micron::TritechMicronConfig_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2ca5e1f487382f5aULL;
  static const uint64_t static_value2 = 0x303a19fc2149e230ULL;
};

template<class ContainerAllocator>
struct DataType< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tritech_micron/TritechMicronConfig";
  }

  static const char* value(const ::tritech_micron::TritechMicronConfig_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Tritech Micron configuration parameters.\n\
\n\
# Header message.\n\
Header header\n\
\n\
# Whether the sonar head is facing upwards.\n\
bool inverted\n\
\n\
# Whether the scan is continuous or in sector scan mode.\n\
bool continuous\n\
\n\
# Whether the scan is clockwise.\n\
bool scanright\n\
\n\
# Whether the scan intensity is an 8-bit or 4-bit number.\n\
bool adc8on\n\
\n\
# Initial gain of the sonar pulse. Ranges between 0 and 1.\n\
float64 gain\n\
\n\
# Mapping of intensity to dB. Ranges from 0 to 80 dB.\n\
float64 ad_low\n\
float64 ad_high\n\
\n\
# Right and left limit of scan if in sector scan mode. Values are in radians\n\
# and range from 0 to 2 pi.\n\
float64 left_limit\n\
float64 right_limit\n\
\n\
# Range of scan in meters.\n\
float64 range\n\
\n\
# Number of bins per scan slice.\n\
int16 nbins\n\
\n\
# Motor step size in radians.\n\
float64 step\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::tritech_micron::TritechMicronConfig_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.inverted);
      stream.next(m.continuous);
      stream.next(m.scanright);
      stream.next(m.adc8on);
      stream.next(m.gain);
      stream.next(m.ad_low);
      stream.next(m.ad_high);
      stream.next(m.left_limit);
      stream.next(m.right_limit);
      stream.next(m.range);
      stream.next(m.nbins);
      stream.next(m.step);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TritechMicronConfig_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tritech_micron::TritechMicronConfig_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tritech_micron::TritechMicronConfig_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "inverted: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.inverted);
    s << indent << "continuous: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.continuous);
    s << indent << "scanright: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.scanright);
    s << indent << "adc8on: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.adc8on);
    s << indent << "gain: ";
    Printer<double>::stream(s, indent + "  ", v.gain);
    s << indent << "ad_low: ";
    Printer<double>::stream(s, indent + "  ", v.ad_low);
    s << indent << "ad_high: ";
    Printer<double>::stream(s, indent + "  ", v.ad_high);
    s << indent << "left_limit: ";
    Printer<double>::stream(s, indent + "  ", v.left_limit);
    s << indent << "right_limit: ";
    Printer<double>::stream(s, indent + "  ", v.right_limit);
    s << indent << "range: ";
    Printer<double>::stream(s, indent + "  ", v.range);
    s << indent << "nbins: ";
    Printer<int16_t>::stream(s, indent + "  ", v.nbins);
    s << indent << "step: ";
    Printer<double>::stream(s, indent + "  ", v.step);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRITECH_MICRON_MESSAGE_TRITECHMICRONCONFIG_H
