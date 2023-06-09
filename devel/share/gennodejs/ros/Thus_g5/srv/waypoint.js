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

class waypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.op = null;
      this.name = null;
      this.pos_x = null;
      this.pos_y = null;
      this.ori_z = null;
      this.ori_w = null;
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
      if (initObj.hasOwnProperty('pos_x')) {
        this.pos_x = initObj.pos_x
      }
      else {
        this.pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('pos_y')) {
        this.pos_y = initObj.pos_y
      }
      else {
        this.pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('ori_z')) {
        this.ori_z = initObj.ori_z
      }
      else {
        this.ori_z = 0.0;
      }
      if (initObj.hasOwnProperty('ori_w')) {
        this.ori_w = initObj.ori_w
      }
      else {
        this.ori_w = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type waypointRequest
    // Serialize message field [op]
    bufferOffset = _serializer.uint8(obj.op, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [pos_x]
    bufferOffset = _serializer.float32(obj.pos_x, buffer, bufferOffset);
    // Serialize message field [pos_y]
    bufferOffset = _serializer.float32(obj.pos_y, buffer, bufferOffset);
    // Serialize message field [ori_z]
    bufferOffset = _serializer.float32(obj.ori_z, buffer, bufferOffset);
    // Serialize message field [ori_w]
    bufferOffset = _serializer.float32(obj.ori_w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type waypointRequest
    let len;
    let data = new waypointRequest(null);
    // Deserialize message field [op]
    data.op = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pos_x]
    data.pos_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pos_y]
    data.pos_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ori_z]
    data.ori_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ori_w]
    data.ori_w = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/waypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '717d7f3271268830bf3243b29d9a7649';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 op
    string name
    float32 pos_x
    float32 pos_y
    float32 ori_z
    float32 ori_w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new waypointRequest(null);
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

    if (msg.pos_x !== undefined) {
      resolved.pos_x = msg.pos_x;
    }
    else {
      resolved.pos_x = 0.0
    }

    if (msg.pos_y !== undefined) {
      resolved.pos_y = msg.pos_y;
    }
    else {
      resolved.pos_y = 0.0
    }

    if (msg.ori_z !== undefined) {
      resolved.ori_z = msg.ori_z;
    }
    else {
      resolved.ori_z = 0.0
    }

    if (msg.ori_w !== undefined) {
      resolved.ori_w = msg.ori_w;
    }
    else {
      resolved.ori_w = 0.0
    }

    return resolved;
    }
};

class waypointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type waypointResponse
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type waypointResponse
    let len;
    let data = new waypointResponse(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/waypointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6a8907dbdc46dea839fb59e243dc983';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new waypointResponse(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: waypointRequest,
  Response: waypointResponse,
  md5sum() { return 'bed5daee1b4718b12320576a56e38ad1'; },
  datatype() { return 'Thus_g5/waypoint'; }
};
