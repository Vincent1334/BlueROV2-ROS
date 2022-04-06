// Auto-generated. Do not edit!

// (in-package core.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Set_target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.depth_desired = null;
      this.heading_desired = null;
      this.velocity_desired = null;
    }
    else {
      if (initObj.hasOwnProperty('depth_desired')) {
        this.depth_desired = initObj.depth_desired
      }
      else {
        this.depth_desired = 0.0;
      }
      if (initObj.hasOwnProperty('heading_desired')) {
        this.heading_desired = initObj.heading_desired
      }
      else {
        this.heading_desired = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_desired')) {
        this.velocity_desired = initObj.velocity_desired
      }
      else {
        this.velocity_desired = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Set_target
    // Serialize message field [depth_desired]
    bufferOffset = _serializer.float64(obj.depth_desired, buffer, bufferOffset);
    // Serialize message field [heading_desired]
    bufferOffset = _serializer.float64(obj.heading_desired, buffer, bufferOffset);
    // Serialize message field [velocity_desired]
    bufferOffset = _serializer.float64(obj.velocity_desired, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Set_target
    let len;
    let data = new Set_target(null);
    // Deserialize message field [depth_desired]
    data.depth_desired = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_desired]
    data.heading_desired = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_desired]
    data.velocity_desired = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'core/Set_target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'faa6984abfc0273c6ee5cabc8606f8ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 depth_desired
    float64 heading_desired
    float64 velocity_desired
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Set_target(null);
    if (msg.depth_desired !== undefined) {
      resolved.depth_desired = msg.depth_desired;
    }
    else {
      resolved.depth_desired = 0.0
    }

    if (msg.heading_desired !== undefined) {
      resolved.heading_desired = msg.heading_desired;
    }
    else {
      resolved.heading_desired = 0.0
    }

    if (msg.velocity_desired !== undefined) {
      resolved.velocity_desired = msg.velocity_desired;
    }
    else {
      resolved.velocity_desired = 0.0
    }

    return resolved;
    }
};

module.exports = Set_target;
