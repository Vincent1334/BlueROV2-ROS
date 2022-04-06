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

class State {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm = null;
      this.rc1 = null;
      this.rc2 = null;
      this.rc3 = null;
      this.rc4 = null;
      this.rc5 = null;
      this.rc6 = null;
      this.light = null;
      this.camera = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('arm')) {
        this.arm = initObj.arm
      }
      else {
        this.arm = false;
      }
      if (initObj.hasOwnProperty('rc1')) {
        this.rc1 = initObj.rc1
      }
      else {
        this.rc1 = 0;
      }
      if (initObj.hasOwnProperty('rc2')) {
        this.rc2 = initObj.rc2
      }
      else {
        this.rc2 = 0;
      }
      if (initObj.hasOwnProperty('rc3')) {
        this.rc3 = initObj.rc3
      }
      else {
        this.rc3 = 0;
      }
      if (initObj.hasOwnProperty('rc4')) {
        this.rc4 = initObj.rc4
      }
      else {
        this.rc4 = 0;
      }
      if (initObj.hasOwnProperty('rc5')) {
        this.rc5 = initObj.rc5
      }
      else {
        this.rc5 = 0;
      }
      if (initObj.hasOwnProperty('rc6')) {
        this.rc6 = initObj.rc6
      }
      else {
        this.rc6 = 0;
      }
      if (initObj.hasOwnProperty('light')) {
        this.light = initObj.light
      }
      else {
        this.light = 0.0;
      }
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State
    // Serialize message field [arm]
    bufferOffset = _serializer.bool(obj.arm, buffer, bufferOffset);
    // Serialize message field [rc1]
    bufferOffset = _serializer.int16(obj.rc1, buffer, bufferOffset);
    // Serialize message field [rc2]
    bufferOffset = _serializer.int16(obj.rc2, buffer, bufferOffset);
    // Serialize message field [rc3]
    bufferOffset = _serializer.int16(obj.rc3, buffer, bufferOffset);
    // Serialize message field [rc4]
    bufferOffset = _serializer.int16(obj.rc4, buffer, bufferOffset);
    // Serialize message field [rc5]
    bufferOffset = _serializer.int16(obj.rc5, buffer, bufferOffset);
    // Serialize message field [rc6]
    bufferOffset = _serializer.int16(obj.rc6, buffer, bufferOffset);
    // Serialize message field [light]
    bufferOffset = _serializer.float64(obj.light, buffer, bufferOffset);
    // Serialize message field [camera]
    bufferOffset = _serializer.float64(obj.camera, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State
    let len;
    let data = new State(null);
    // Deserialize message field [arm]
    data.arm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rc1]
    data.rc1 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rc2]
    data.rc2 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rc3]
    data.rc3 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rc4]
    data.rc4 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rc5]
    data.rc5 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [rc6]
    data.rc6 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [light]
    data.light = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [camera]
    data.camera = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.mode);
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'core/State';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d689844bfa2e5cd74a8f2a60b1a7770';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool arm
    int16 rc1
    int16 rc2
    int16 rc3
    int16 rc4
    int16 rc5
    int16 rc6
    float64 light
    float64 camera
    string mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State(null);
    if (msg.arm !== undefined) {
      resolved.arm = msg.arm;
    }
    else {
      resolved.arm = false
    }

    if (msg.rc1 !== undefined) {
      resolved.rc1 = msg.rc1;
    }
    else {
      resolved.rc1 = 0
    }

    if (msg.rc2 !== undefined) {
      resolved.rc2 = msg.rc2;
    }
    else {
      resolved.rc2 = 0
    }

    if (msg.rc3 !== undefined) {
      resolved.rc3 = msg.rc3;
    }
    else {
      resolved.rc3 = 0
    }

    if (msg.rc4 !== undefined) {
      resolved.rc4 = msg.rc4;
    }
    else {
      resolved.rc4 = 0
    }

    if (msg.rc5 !== undefined) {
      resolved.rc5 = msg.rc5;
    }
    else {
      resolved.rc5 = 0
    }

    if (msg.rc6 !== undefined) {
      resolved.rc6 = msg.rc6;
    }
    else {
      resolved.rc6 = 0
    }

    if (msg.light !== undefined) {
      resolved.light = msg.light;
    }
    else {
      resolved.light = 0.0
    }

    if (msg.camera !== undefined) {
      resolved.camera = msg.camera;
    }
    else {
      resolved.camera = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    return resolved;
    }
};

module.exports = State;
