// Auto-generated. Do not edit!

// (in-package pose_graph_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PoseGraphEdge {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_from = null;
      this.key_to = null;
    }
    else {
      if (initObj.hasOwnProperty('key_from')) {
        this.key_from = initObj.key_from
      }
      else {
        this.key_from = 0;
      }
      if (initObj.hasOwnProperty('key_to')) {
        this.key_to = initObj.key_to
      }
      else {
        this.key_to = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseGraphEdge
    // Serialize message field [key_from]
    bufferOffset = _serializer.uint64(obj.key_from, buffer, bufferOffset);
    // Serialize message field [key_to]
    bufferOffset = _serializer.uint64(obj.key_to, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseGraphEdge
    let len;
    let data = new PoseGraphEdge(null);
    // Deserialize message field [key_from]
    data.key_from = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [key_to]
    data.key_to = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pose_graph_msgs/PoseGraphEdge';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '412ec4974717bfb14dd2482fb43c1f28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 key_from
    uint64 key_to
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseGraphEdge(null);
    if (msg.key_from !== undefined) {
      resolved.key_from = msg.key_from;
    }
    else {
      resolved.key_from = 0
    }

    if (msg.key_to !== undefined) {
      resolved.key_to = msg.key_to;
    }
    else {
      resolved.key_to = 0
    }

    return resolved;
    }
};

module.exports = PoseGraphEdge;
