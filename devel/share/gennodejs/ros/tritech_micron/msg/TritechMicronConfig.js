// Auto-generated. Do not edit!

// (in-package tritech_micron.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TritechMicronConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.inverted = null;
      this.continuous = null;
      this.scanright = null;
      this.adc8on = null;
      this.gain = null;
      this.ad_low = null;
      this.ad_high = null;
      this.left_limit = null;
      this.right_limit = null;
      this.range = null;
      this.nbins = null;
      this.step = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('inverted')) {
        this.inverted = initObj.inverted
      }
      else {
        this.inverted = false;
      }
      if (initObj.hasOwnProperty('continuous')) {
        this.continuous = initObj.continuous
      }
      else {
        this.continuous = false;
      }
      if (initObj.hasOwnProperty('scanright')) {
        this.scanright = initObj.scanright
      }
      else {
        this.scanright = false;
      }
      if (initObj.hasOwnProperty('adc8on')) {
        this.adc8on = initObj.adc8on
      }
      else {
        this.adc8on = false;
      }
      if (initObj.hasOwnProperty('gain')) {
        this.gain = initObj.gain
      }
      else {
        this.gain = 0.0;
      }
      if (initObj.hasOwnProperty('ad_low')) {
        this.ad_low = initObj.ad_low
      }
      else {
        this.ad_low = 0.0;
      }
      if (initObj.hasOwnProperty('ad_high')) {
        this.ad_high = initObj.ad_high
      }
      else {
        this.ad_high = 0.0;
      }
      if (initObj.hasOwnProperty('left_limit')) {
        this.left_limit = initObj.left_limit
      }
      else {
        this.left_limit = 0.0;
      }
      if (initObj.hasOwnProperty('right_limit')) {
        this.right_limit = initObj.right_limit
      }
      else {
        this.right_limit = 0.0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('nbins')) {
        this.nbins = initObj.nbins
      }
      else {
        this.nbins = 0;
      }
      if (initObj.hasOwnProperty('step')) {
        this.step = initObj.step
      }
      else {
        this.step = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TritechMicronConfig
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [inverted]
    bufferOffset = _serializer.bool(obj.inverted, buffer, bufferOffset);
    // Serialize message field [continuous]
    bufferOffset = _serializer.bool(obj.continuous, buffer, bufferOffset);
    // Serialize message field [scanright]
    bufferOffset = _serializer.bool(obj.scanright, buffer, bufferOffset);
    // Serialize message field [adc8on]
    bufferOffset = _serializer.bool(obj.adc8on, buffer, bufferOffset);
    // Serialize message field [gain]
    bufferOffset = _serializer.float64(obj.gain, buffer, bufferOffset);
    // Serialize message field [ad_low]
    bufferOffset = _serializer.float64(obj.ad_low, buffer, bufferOffset);
    // Serialize message field [ad_high]
    bufferOffset = _serializer.float64(obj.ad_high, buffer, bufferOffset);
    // Serialize message field [left_limit]
    bufferOffset = _serializer.float64(obj.left_limit, buffer, bufferOffset);
    // Serialize message field [right_limit]
    bufferOffset = _serializer.float64(obj.right_limit, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float64(obj.range, buffer, bufferOffset);
    // Serialize message field [nbins]
    bufferOffset = _serializer.int16(obj.nbins, buffer, bufferOffset);
    // Serialize message field [step]
    bufferOffset = _serializer.float64(obj.step, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TritechMicronConfig
    let len;
    let data = new TritechMicronConfig(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [inverted]
    data.inverted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [continuous]
    data.continuous = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [scanright]
    data.scanright = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [adc8on]
    data.adc8on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gain]
    data.gain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ad_low]
    data.ad_low = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ad_high]
    data.ad_high = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_limit]
    data.left_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_limit]
    data.right_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nbins]
    data.nbins = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [step]
    data.step = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tritech_micron/TritechMicronConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ca5e1f487382f5a303a19fc2149e230';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Tritech Micron configuration parameters.
    
    # Header message.
    Header header
    
    # Whether the sonar head is facing upwards.
    bool inverted
    
    # Whether the scan is continuous or in sector scan mode.
    bool continuous
    
    # Whether the scan is clockwise.
    bool scanright
    
    # Whether the scan intensity is an 8-bit or 4-bit number.
    bool adc8on
    
    # Initial gain of the sonar pulse. Ranges between 0 and 1.
    float64 gain
    
    # Mapping of intensity to dB. Ranges from 0 to 80 dB.
    float64 ad_low
    float64 ad_high
    
    # Right and left limit of scan if in sector scan mode. Values are in radians
    # and range from 0 to 2 pi.
    float64 left_limit
    float64 right_limit
    
    # Range of scan in meters.
    float64 range
    
    # Number of bins per scan slice.
    int16 nbins
    
    # Motor step size in radians.
    float64 step
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TritechMicronConfig(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.inverted !== undefined) {
      resolved.inverted = msg.inverted;
    }
    else {
      resolved.inverted = false
    }

    if (msg.continuous !== undefined) {
      resolved.continuous = msg.continuous;
    }
    else {
      resolved.continuous = false
    }

    if (msg.scanright !== undefined) {
      resolved.scanright = msg.scanright;
    }
    else {
      resolved.scanright = false
    }

    if (msg.adc8on !== undefined) {
      resolved.adc8on = msg.adc8on;
    }
    else {
      resolved.adc8on = false
    }

    if (msg.gain !== undefined) {
      resolved.gain = msg.gain;
    }
    else {
      resolved.gain = 0.0
    }

    if (msg.ad_low !== undefined) {
      resolved.ad_low = msg.ad_low;
    }
    else {
      resolved.ad_low = 0.0
    }

    if (msg.ad_high !== undefined) {
      resolved.ad_high = msg.ad_high;
    }
    else {
      resolved.ad_high = 0.0
    }

    if (msg.left_limit !== undefined) {
      resolved.left_limit = msg.left_limit;
    }
    else {
      resolved.left_limit = 0.0
    }

    if (msg.right_limit !== undefined) {
      resolved.right_limit = msg.right_limit;
    }
    else {
      resolved.right_limit = 0.0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.nbins !== undefined) {
      resolved.nbins = msg.nbins;
    }
    else {
      resolved.nbins = 0
    }

    if (msg.step !== undefined) {
      resolved.step = msg.step;
    }
    else {
      resolved.step = 0.0
    }

    return resolved;
    }
};

module.exports = TritechMicronConfig;
