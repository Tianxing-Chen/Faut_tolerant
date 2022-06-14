// Auto-generated. Do not edit!

// (in-package quad_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.control_mode = null;
      this.off = null;
      this.execution_time = null;
      this.orientation = null;
      this.bodyrates = null;
      this.angular_accelerations = null;
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
      if (initObj.hasOwnProperty('off')) {
        this.off = initObj.off
      }
      else {
        this.off = false;
      }
      if (initObj.hasOwnProperty('execution_time')) {
        this.execution_time = initObj.execution_time
      }
      else {
        this.execution_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('bodyrates')) {
        this.bodyrates = initObj.bodyrates
      }
      else {
        this.bodyrates = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_accelerations')) {
        this.angular_accelerations = initObj.angular_accelerations
      }
      else {
        this.angular_accelerations = new geometry_msgs.msg.Vector3();
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
    // Serializes a message object of type ControlCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [off]
    bufferOffset = _serializer.bool(obj.off, buffer, bufferOffset);
    // Serialize message field [execution_time]
    bufferOffset = _serializer.time(obj.execution_time, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [bodyrates]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bodyrates, buffer, bufferOffset);
    // Serialize message field [angular_accelerations]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_accelerations, buffer, bufferOffset);
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
    //deserializes a message object of type ControlCommand
    let len;
    let data = new ControlCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [off]
    data.off = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [execution_time]
    data.execution_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [bodyrates]
    data.bodyrates = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_accelerations]
    data.angular_accelerations = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
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
    return length + 162;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quad_msgs/ControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4ea83396796aba2c3fbc0dae6c13858';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Control Command
    # This message is sent to a low level controller on the quadrotor
    
    # control mode enums
    uint8 NONE=0
    uint8 ANGLE=1
    uint8 ANGLERATE=2
    uint8 ROTTHROTTLE=3
    
    
    Header header
    
    # Control mode as defined above
    uint8 control_mode
    
    # Flag whether controller was set to OFF
    bool off
    
    # Time at which this command should be executed
    time execution_time
    
    # Orientation of the body frame with respect to the world frame [-]
    geometry_msgs/Quaternion orientation
    
    # Body rates in body frame [rad/s]
    # Note that in ANGLE mode the x-y-bodyrates are only feed forward terms computed from a reference trajectory
    # Also in ANGLE mode, the z-bodyrate has to be from feedback control
    geometry_msgs/Vector3 bodyrates
    
    # Angular accelerations in body frame [rad/s^2]
    geometry_msgs/Vector3 angular_accelerations
    
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
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCommand(null);
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

    if (msg.off !== undefined) {
      resolved.off = msg.off;
    }
    else {
      resolved.off = false
    }

    if (msg.execution_time !== undefined) {
      resolved.execution_time = msg.execution_time;
    }
    else {
      resolved.execution_time = {secs: 0, nsecs: 0}
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.bodyrates !== undefined) {
      resolved.bodyrates = geometry_msgs.msg.Vector3.Resolve(msg.bodyrates)
    }
    else {
      resolved.bodyrates = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_accelerations !== undefined) {
      resolved.angular_accelerations = geometry_msgs.msg.Vector3.Resolve(msg.angular_accelerations)
    }
    else {
      resolved.angular_accelerations = new geometry_msgs.msg.Vector3()
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

// Constants for message
ControlCommand.Constants = {
  NONE: 0,
  ANGLE: 1,
  ANGLERATE: 2,
  ROTTHROTTLE: 3,
}

module.exports = ControlCommand;
