// Auto-generated. Do not edit!

// (in-package Thus_g5.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class vel_ctrlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dx = null;
      this.dy = null;
      this.dth = null;
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('dx')) {
        this.dx = initObj.dx
      }
      else {
        this.dx = 0;
      }
      if (initObj.hasOwnProperty('dy')) {
        this.dy = initObj.dy
      }
      else {
        this.dy = 0;
      }
      if (initObj.hasOwnProperty('dth')) {
        this.dth = initObj.dth
      }
      else {
        this.dth = 0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vel_ctrlRequest
    // Serialize message field [dx]
    bufferOffset = _serializer.int8(obj.dx, buffer, bufferOffset);
    // Serialize message field [dy]
    bufferOffset = _serializer.int8(obj.dy, buffer, bufferOffset);
    // Serialize message field [dth]
    bufferOffset = _serializer.int8(obj.dth, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.int8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vel_ctrlRequest
    let len;
    let data = new vel_ctrlRequest(null);
    // Deserialize message field [dx]
    data.dx = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [dy]
    data.dy = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [dth]
    data.dth = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/vel_ctrlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '223727083582ecbea99ffb87c0f4087d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 dx
    int8 dy
    int8 dth
    int8 flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vel_ctrlRequest(null);
    if (msg.dx !== undefined) {
      resolved.dx = msg.dx;
    }
    else {
      resolved.dx = 0
    }

    if (msg.dy !== undefined) {
      resolved.dy = msg.dy;
    }
    else {
      resolved.dy = 0
    }

    if (msg.dth !== undefined) {
      resolved.dth = msg.dth;
    }
    else {
      resolved.dth = 0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

class vel_ctrlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx = null;
      this.vy = null;
      this.w = null;
    }
    else {
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vel_ctrlResponse
    // Serialize message field [vx]
    bufferOffset = _serializer.float32(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float32(obj.vy, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.float32(obj.w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vel_ctrlResponse
    let len;
    let data = new vel_ctrlResponse(null);
    // Deserialize message field [vx]
    data.vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/vel_ctrlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3691ef5f5de1a108d3f9cc106129c39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 vx
    float32 vy
    float32 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vel_ctrlResponse(null);
    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: vel_ctrlRequest,
  Response: vel_ctrlResponse,
  md5sum() { return '7d814a1679e0452bdd864dd2c3793820'; },
  datatype() { return 'Thus_g5/vel_ctrl'; }
};
