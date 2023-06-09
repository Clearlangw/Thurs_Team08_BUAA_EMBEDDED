// Auto-generated. Do not edit!

// (in-package xfyun_new.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bridgeToBack {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.content = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('content')) {
        this.content = initObj.content
      }
      else {
        this.content = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type bridgeToBack
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [content]
    bufferOffset = _serializer.string(obj.content, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bridgeToBack
    let len;
    let data = new bridgeToBack(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [content]
    data.content = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.content.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xfyun_new/bridgeToBack';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53c8c8d6cb18826e9166d1d2c8b0d1f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 state
    string content
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bridgeToBack(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.content !== undefined) {
      resolved.content = msg.content;
    }
    else {
      resolved.content = ''
    }

    return resolved;
    }
};

module.exports = bridgeToBack;
