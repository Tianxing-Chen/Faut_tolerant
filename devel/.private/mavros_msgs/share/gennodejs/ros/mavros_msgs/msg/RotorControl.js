// Auto-generated. Do not edit!

// (in-package mavros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RotorControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.control_mode = null;
      this.thrust = null;
      this.mot_throttle = null;
      this.rotor_thrust = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = 0.0;
      }
      if (initObj.hasOwnProperty('mot_throttle')) {
        this.mot_throttle = initObj.mot_throttle
      }
      else {
        this.mot_throttle = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('rotor_thrust')) {
        this.rotor_thrust = initObj.rotor_thrust
      }
      else {
        this.rotor_thrust = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RotorControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [thrust]
    bufferOffset = _serializer.float64(obj.thrust, buffer, bufferOffset);
    // Check that the constant length array field [mot_throttle] has the right length
    if (obj.mot_throttle.length !== 4) {
      throw new Error('Unable to serialize array field mot_throttle - length must be 4')
    }
    // Serialize message field [mot_throttle]
    bufferOffset = _arraySerializer.float64(obj.mot_throttle, buffer, bufferOffset, 4);
    // Check that the constant length array field [rotor_thrust] has the right length
    if (obj.rotor_thrust.length !== 4) {
      throw new Error('Unable to serialize array field rotor_thrust - length must be 4')
    }
    // Serialize message field [rotor_thrust]
    bufferOffset = _arraySerializer.float64(obj.rotor_thrust, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RotorControl
    let len;
    let data = new RotorControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [thrust]
    data.thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mot_throttle]
    data.mot_throttle = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [rotor_thrust]
    data.rotor_thrust = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavros_msgs/RotorControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1897a820e48a9b32eaef11f9f222593b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This message is sent to a low level controller on the quadrotor
    
    std_msgs/Header header
    # Control mode as defined above
    uint8 control_mode
    
    # Collective mass normalized thrust [m/s^2]
    float64 thrust
    
    # Single rotor throttle [0-2000]
    float64[4] mot_throttle
    
    # Single rotor thrust
    float64[4] rotor_thrust
    
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
    const resolved = new RotorControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.thrust !== undefined) {
      resolved.thrust = msg.thrust;
    }
    else {
      resolved.thrust = 0.0
    }

    if (msg.mot_throttle !== undefined) {
      resolved.mot_throttle = msg.mot_throttle;
    }
    else {
      resolved.mot_throttle = new Array(4).fill(0)
    }

    if (msg.rotor_thrust !== undefined) {
      resolved.rotor_thrust = msg.rotor_thrust;
    }
    else {
      resolved.rotor_thrust = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = RotorControl;
