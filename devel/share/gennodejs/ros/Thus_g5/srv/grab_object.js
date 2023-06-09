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

class grab_objectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type grab_objectRequest
    // Serialize message field [goal]
    bufferOffset = _serializer.string(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type grab_objectRequest
    let len;
    let data = new grab_objectRequest(null);
    // Deserialize message field [goal]
    data.goal = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.goal.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/grab_objectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e8c62b390dd09eb60220ad7325cbdf7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string goal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new grab_objectRequest(null);
    if (msg.goal !== undefined) {
      resolved.goal = msg.goal;
    }
    else {
      resolved.goal = ''
    }

    return resolved;
    }
};

class grab_objectResponse {
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
    // Serializes a message object of type grab_objectResponse
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type grab_objectResponse
    let len;
    let data = new grab_objectResponse(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/grab_objectResponse';
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
    const resolved = new grab_objectResponse(null);
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
  Request: grab_objectRequest,
  Response: grab_objectResponse,
  md5sum() { return '85eb5661a8af1bbedc0539d77068c54e'; },
  datatype() { return 'Thus_g5/grab_object'; }
};
