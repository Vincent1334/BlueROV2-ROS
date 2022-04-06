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

class Set_velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_velocity_ctrl = null;
      this.pwm_max = null;
      this.KP = null;
      this.KD = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_velocity_ctrl')) {
        this.enable_velocity_ctrl = initObj.enable_velocity_ctrl
      }
      else {
        this.enable_velocity_ctrl = false;
      }
      if (initObj.hasOwnProperty('pwm_max')) {
        this.pwm_max = initObj.pwm_max
      }
      else {
        this.pwm_max = 0;
      }
      if (initObj.hasOwnProperty('KP')) {
        this.KP = initObj.KP
      }
      else {
        this.KP = 0;
      }
      if (initObj.hasOwnProperty('KD')) {
        this.KD = initObj.KD
      }
      else {
        this.KD = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Set_velocity
    // Serialize message field [enable_velocity_ctrl]
    bufferOffset = _serializer.bool(obj.enable_velocity_ctrl, buffer, bufferOffset);
    // Serialize message field [pwm_max]
    bufferOffset = _serializer.uint16(obj.pwm_max, buffer, bufferOffset);
    // Serialize message field [KP]
    bufferOffset = _serializer.uint32(obj.KP, buffer, bufferOffset);
    // Serialize message field [KD]
    bufferOffset = _serializer.uint32(obj.KD, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Set_velocity
    let len;
    let data = new Set_velocity(null);
    // Deserialize message field [enable_velocity_ctrl]
    data.enable_velocity_ctrl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pwm_max]
    data.pwm_max = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [KP]
    data.KP = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [KD]
    data.KD = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'core/Set_velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4803dc7cecc9ba43456f9905c6d9e6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable_velocity_ctrl
    uint16 pwm_max 
    uint32 KP
    uint32 KD
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Set_velocity(null);
    if (msg.enable_velocity_ctrl !== undefined) {
      resolved.enable_velocity_ctrl = msg.enable_velocity_ctrl;
    }
    else {
      resolved.enable_velocity_ctrl = false
    }

    if (msg.pwm_max !== undefined) {
      resolved.pwm_max = msg.pwm_max;
    }
    else {
      resolved.pwm_max = 0
    }

    if (msg.KP !== undefined) {
      resolved.KP = msg.KP;
    }
    else {
      resolved.KP = 0
    }

    if (msg.KD !== undefined) {
      resolved.KD = msg.KD;
    }
    else {
      resolved.KD = 0
    }

    return resolved;
    }
};

module.exports = Set_velocity;
