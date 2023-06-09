// Auto-generated. Do not edit!

// (in-package waterplus_map_tools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class pointsNumMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wayPointsNum = null;
    }
    else {
      if (initObj.hasOwnProperty('wayPointsNum')) {
        this.wayPointsNum = initObj.wayPointsNum
      }
      else {
        this.wayPointsNum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pointsNumMsg
    // Serialize message field [wayPointsNum]
    bufferOffset = _serializer.int32(obj.wayPointsNum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pointsNumMsg
    let len;
    let data = new pointsNumMsg(null);
    // Deserialize message field [wayPointsNum]
    data.wayPointsNum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'waterplus_map_tools/pointsNumMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21963038274a792e85177cbe61934856';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 wayPointsNum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pointsNumMsg(null);
    if (msg.wayPointsNum !== undefined) {
      resolved.wayPointsNum = msg.wayPointsNum;
    }
    else {
      resolved.wayPointsNum = 0
    }

    return resolved;
    }
};

module.exports = pointsNumMsg;
