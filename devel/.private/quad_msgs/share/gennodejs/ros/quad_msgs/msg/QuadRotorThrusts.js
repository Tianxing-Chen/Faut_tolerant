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

class QuadRotorThrusts {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.thrust_1 = null;
      this.thrust_2 = null;
      this.thrust_3 = null;
      this.thrust_4 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('thrust_1')) {
        this.thrust_1 = initObj.thrust_1
      }
      else {
        this.thrust_1 = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_2')) {
        this.thrust_2 = initObj.thrust_2
      }
      else {
        this.thrust_2 = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_3')) {
        this.thrust_3 = initObj.thrust_3
      }
      else {
        this.thrust_3 = 0.0;
      }
      if (initObj.hasOwnProperty('thrust_4')) {
        this.thrust_4 = initObj.thrust_4
      }
      else {
        this.thrust_4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadRotorThrusts
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [thrust_1]
    bufferOffset = _serializer.float64(obj.thrust_1, buffer, bufferOffset);
    // Serialize message field [thrust_2]
    bufferOffset = _serializer.float64(obj.thrust_2, buffer, bufferOffset);
    // Serialize message field [thrust_3]
    bufferOffset = _serializer.float64(obj.thrust_3, buffer, bufferOffset);
    // Serialize message field [thrust_4]
    bufferOffset = _serializer.float64(obj.thrust_4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadRotorThrusts
    let len;
    let data = new QuadRotorThrusts(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [thrust_1]
    data.thrust_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_2]
    data.thrust_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_3]
    data.thrust_3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [thrust_4]
    data.thrust_4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quad_msgs/QuadRotorThrusts';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '971e125a0994b8a82a3a4740294147b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Single rotor thrusts of a quadrotor
    # This message is received from onboard (the actually applied rotor thrusts)
    
    Header header
    
    # Single rotor thrusts [N]
    float64 thrust_1
    float64 thrust_2
    float64 thrust_3
    float64 thrust_4
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
    const resolved = new QuadRotorThrusts(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.thrust_1 !== undefined) {
      resolved.thrust_1 = msg.thrust_1;
    }
    else {
      resolved.thrust_1 = 0.0
    }

    if (msg.thrust_2 !== undefined) {
      resolved.thrust_2 = msg.thrust_2;
    }
    else {
      resolved.thrust_2 = 0.0
    }

    if (msg.thrust_3 !== undefined) {
      resolved.thrust_3 = msg.thrust_3;
    }
    else {
      resolved.thrust_3 = 0.0
    }

    if (msg.thrust_4 !== undefined) {
      resolved.thrust_4 = msg.thrust_4;
    }
    else {
      resolved.thrust_4 = 0.0
    }

    return resolved;
    }
};

module.exports = QuadRotorThrusts;
