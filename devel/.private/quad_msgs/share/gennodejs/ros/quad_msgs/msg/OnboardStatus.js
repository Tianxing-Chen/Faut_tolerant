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

class OnboardStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.commander_state = null;
      this.battery_state = null;
      this.control_mode = null;
      this.battery_voltage = null;
      this.pcb_temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('commander_state')) {
        this.commander_state = initObj.commander_state
      }
      else {
        this.commander_state = 0;
      }
      if (initObj.hasOwnProperty('battery_state')) {
        this.battery_state = initObj.battery_state
      }
      else {
        this.battery_state = 0;
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('pcb_temperature')) {
        this.pcb_temperature = initObj.pcb_temperature
      }
      else {
        this.pcb_temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OnboardStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [commander_state]
    bufferOffset = _serializer.uint8(obj.commander_state, buffer, bufferOffset);
    // Serialize message field [battery_state]
    bufferOffset = _serializer.uint8(obj.battery_state, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float64(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [pcb_temperature]
    bufferOffset = _serializer.float32(obj.pcb_temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OnboardStatus
    let len;
    let data = new OnboardStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [commander_state]
    data.commander_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [battery_state]
    data.battery_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pcb_temperature]
    data.pcb_temperature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quad_msgs/OnboardStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab2e46231b964a6f29dabac1bc0f4937';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Status message from the PX4
    
    # commander state enums
    uint8 LANDED=0
    uint8 AUTONOMOUS_FLYING=1
    uint8 MANUAL_FLYING=2
    uint8 EMERGENCY_LANDING=3
    
    # battery state enums
    uint8 INVALID=0
    uint8 GOOD=1
    uint8 LOW=2
    uint8 CRITICAL=3
    
            
    # control mode enums
    uint8 RATE_MODE=0
    uint8 ATTITUDE_MODE=1
    
    Header header
    
    uint8 commander_state
    uint8 battery_state
    uint8 control_mode
    float64 battery_voltage
    float32 pcb_temperature
    
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
    const resolved = new OnboardStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.commander_state !== undefined) {
      resolved.commander_state = msg.commander_state;
    }
    else {
      resolved.commander_state = 0
    }

    if (msg.battery_state !== undefined) {
      resolved.battery_state = msg.battery_state;
    }
    else {
      resolved.battery_state = 0
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.pcb_temperature !== undefined) {
      resolved.pcb_temperature = msg.pcb_temperature;
    }
    else {
      resolved.pcb_temperature = 0.0
    }

    return resolved;
    }
};

// Constants for message
OnboardStatus.Constants = {
  LANDED: 0,
  AUTONOMOUS_FLYING: 1,
  MANUAL_FLYING: 2,
  EMERGENCY_LANDING: 3,
  INVALID: 0,
  GOOD: 1,
  LOW: 2,
  CRITICAL: 3,
  RATE_MODE: 0,
  ATTITUDE_MODE: 1,
}

module.exports = OnboardStatus;
