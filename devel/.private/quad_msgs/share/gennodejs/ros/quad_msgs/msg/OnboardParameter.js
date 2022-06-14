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

class OnboardParameter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.param_id = null;
      this.param_value = null;
      this.param_type = null;
      this.param_count = null;
      this.param_index = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('param_id')) {
        this.param_id = initObj.param_id
      }
      else {
        this.param_id = '';
      }
      if (initObj.hasOwnProperty('param_value')) {
        this.param_value = initObj.param_value
      }
      else {
        this.param_value = 0.0;
      }
      if (initObj.hasOwnProperty('param_type')) {
        this.param_type = initObj.param_type
      }
      else {
        this.param_type = 0;
      }
      if (initObj.hasOwnProperty('param_count')) {
        this.param_count = initObj.param_count
      }
      else {
        this.param_count = 0;
      }
      if (initObj.hasOwnProperty('param_index')) {
        this.param_index = initObj.param_index
      }
      else {
        this.param_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OnboardParameter
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [param_id]
    bufferOffset = _serializer.string(obj.param_id, buffer, bufferOffset);
    // Serialize message field [param_value]
    bufferOffset = _serializer.float64(obj.param_value, buffer, bufferOffset);
    // Serialize message field [param_type]
    bufferOffset = _serializer.uint8(obj.param_type, buffer, bufferOffset);
    // Serialize message field [param_count]
    bufferOffset = _serializer.uint16(obj.param_count, buffer, bufferOffset);
    // Serialize message field [param_index]
    bufferOffset = _serializer.uint16(obj.param_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OnboardParameter
    let len;
    let data = new OnboardParameter(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [param_id]
    data.param_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [param_value]
    data.param_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [param_type]
    data.param_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [param_count]
    data.param_count = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [param_index]
    data.param_index = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.param_id.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quad_msgs/OnboardParameter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '848b3224649dee188bd859cc1a9c4bbb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Message type handling onboard parameters of the PX4
    
    Header header
    
    #Onboard parameter id (char[16])
    string param_id
    
    #Value of the parameter
    float64 param_value
    
    #Onboard parameter type according to the mavlink message: MAV_PARAM_TYPE
    uint8 param_type
    
    #Total number of onboard parameters
    uint16 param_count
    
    #Index of this onboard parameter
    uint16 param_index
    
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
    const resolved = new OnboardParameter(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.param_id !== undefined) {
      resolved.param_id = msg.param_id;
    }
    else {
      resolved.param_id = ''
    }

    if (msg.param_value !== undefined) {
      resolved.param_value = msg.param_value;
    }
    else {
      resolved.param_value = 0.0
    }

    if (msg.param_type !== undefined) {
      resolved.param_type = msg.param_type;
    }
    else {
      resolved.param_type = 0
    }

    if (msg.param_count !== undefined) {
      resolved.param_count = msg.param_count;
    }
    else {
      resolved.param_count = 0
    }

    if (msg.param_index !== undefined) {
      resolved.param_index = msg.param_index;
    }
    else {
      resolved.param_index = 0
    }

    return resolved;
    }
};

module.exports = OnboardParameter;
