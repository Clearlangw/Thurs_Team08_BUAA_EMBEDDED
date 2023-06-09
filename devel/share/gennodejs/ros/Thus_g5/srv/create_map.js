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

class create_mapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.file_path = null;
      this.image_path = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = '';
      }
      if (initObj.hasOwnProperty('image_path')) {
        this.image_path = initObj.image_path
      }
      else {
        this.image_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type create_mapRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [file_path]
    bufferOffset = _serializer.string(obj.file_path, buffer, bufferOffset);
    // Serialize message field [image_path]
    bufferOffset = _serializer.string(obj.image_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type create_mapRequest
    let len;
    let data = new create_mapRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [file_path]
    data.file_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [image_path]
    data.image_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.file_path.length;
    length += object.image_path.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/create_mapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bfa8407ff3f296085108a6bfcbfc20e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string file_path
    string image_path
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new create_mapRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.file_path !== undefined) {
      resolved.file_path = msg.file_path;
    }
    else {
      resolved.file_path = ''
    }

    if (msg.image_path !== undefined) {
      resolved.image_path = msg.image_path;
    }
    else {
      resolved.image_path = ''
    }

    return resolved;
    }
};

class create_mapResponse {
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
    // Serializes a message object of type create_mapResponse
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type create_mapResponse
    let len;
    let data = new create_mapResponse(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'Thus_g5/create_mapResponse';
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
    const resolved = new create_mapResponse(null);
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
  Request: create_mapRequest,
  Response: create_mapResponse,
  md5sum() { return 'fdf9d2b99128bd8fc18468084eb93c4f'; },
  datatype() { return 'Thus_g5/create_map'; }
};
