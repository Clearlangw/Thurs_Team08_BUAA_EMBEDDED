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

class modify_waypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.op = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('op')) {
        this.op = initObj.op
      }
      else {
        this.op = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type modify_waypointRequest
    // Serialize message field [op]
    bufferOffset = _serializer.uint8(obj.op, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type modify_waypointRequest
    let len;
    let data = new modify_waypointRequest(null);
    // Deserialize message field [op]
    data.op = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/modify_waypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d305bfeabc8d4ca2bf2bd153b69b80c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 op
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new modify_waypointRequest(null);
    if (msg.op !== undefined) {
      resolved.op = msg.op;
    }
    else {
      resolved.op = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class modify_waypointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
      this.x = null;
      this.y = null;
      this.th = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('th')) {
        this.th = initObj.th
      }
      else {
        this.th = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type modify_waypointResponse
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [th]
    bufferOffset = _serializer.float32(obj.th, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type modify_waypointResponse
    let len;
    let data = new modify_waypointResponse(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [th]
    data.th = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/modify_waypointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d5c92c2a3358924aa6c0e93cdbfc27d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 flag
    float32 x
    float32 y
    float32 th
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new modify_waypointResponse(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.th !== undefined) {
      resolved.th = msg.th;
    }
    else {
      resolved.th = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: modify_waypointRequest,
  Response: modify_waypointResponse,
  md5sum() { return '478c393b4e4234c67c0fc79ff227ecab'; },
  datatype() { return 'Thus_g5/modify_waypoint'; }
};
