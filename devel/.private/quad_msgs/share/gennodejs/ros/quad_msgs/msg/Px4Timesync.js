// Auto-generated. Do not edit!

// (in-package quad_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Px4Timesync {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sync_id = null;
      this.time_px4 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sync_id')) {
        this.sync_id = initObj.sync_id
      }
      else {
        this.sync_id = 0;
      }
      if (initObj.hasOwnProperty('time_px4')) {
        this.time_px4 = initObj.time_px4
      }
      else {
        this.time_px4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Px4Timesync
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sync_id]
    bufferOffset = _serializer.int64(obj.sync_id, buffer, bufferOffset);
    // Serialize message field [time_px4]
    bufferOffset = _serializer.uint64(obj.time_px4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Px4Timesync
    let len;
    let data = new Px4Timesync(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sync_id]
    data.sync_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [time_px4]
    data.time_px4 = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quad_msgs/Px4Timesync';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '327517baa37dbcc4373715d2a46cae2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Quadrotor State Estimate 
    # This Message is published by an estimator
    
    Header header
    
    # Sync id: not used yet
    int64 sync_id
    
    # PX4fmu timestamp
    uint64 time_px4
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Px4Timesync(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sync_id !== undefined) {
      resolved.sync_id = msg.sync_id;
    }
    else {
      resolved.sync_id = 0
    }

    if (msg.time_px4 !== undefined) {
      resolved.time_px4 = msg.time_px4;
    }
    else {
      resolved.time_px4 = 0
    }

    return resolved;
    }
};

module.exports = Px4Timesync;
