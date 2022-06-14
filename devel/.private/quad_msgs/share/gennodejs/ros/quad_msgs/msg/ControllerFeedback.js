// Auto-generated. Do not edit!

// (in-package quad_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let QuadDesiredState = require('./QuadDesiredState.js');
let QuadStateEstimate = require('./QuadStateEstimate.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ControllerFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracking_ok = null;
      this.controller_state = null;
      this.command_execution_time = null;
      this.desired_state = null;
      this.state_estimate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracking_ok')) {
        this.tracking_ok = initObj.tracking_ok
      }
      else {
        this.tracking_ok = 0;
      }
      if (initObj.hasOwnProperty('controller_state')) {
        this.controller_state = initObj.controller_state
      }
      else {
        this.controller_state = 0;
      }
      if (initObj.hasOwnProperty('command_execution_time')) {
        this.command_execution_time = initObj.command_execution_time
      }
      else {
        this.command_execution_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('desired_state')) {
        this.desired_state = initObj.desired_state
      }
      else {
        this.desired_state = new QuadDesiredState();
      }
      if (initObj.hasOwnProperty('state_estimate')) {
        this.state_estimate = initObj.state_estimate
      }
      else {
        this.state_estimate = new QuadStateEstimate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllerFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracking_ok]
    bufferOffset = _serializer.int8(obj.tracking_ok, buffer, bufferOffset);
    // Serialize message field [controller_state]
    bufferOffset = _serializer.int8(obj.controller_state, buffer, bufferOffset);
    // Serialize message field [command_execution_time]
    bufferOffset = _serializer.time(obj.command_execution_time, buffer, bufferOffset);
    // Serialize message field [desired_state]
    bufferOffset = QuadDesiredState.serialize(obj.desired_state, buffer, bufferOffset);
    // Serialize message field [state_estimate]
    bufferOffset = QuadStateEstimate.serialize(obj.state_estimate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllerFeedback
    let len;
    let data = new ControllerFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracking_ok]
    data.tracking_ok = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [controller_state]
    data.controller_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [command_execution_time]
    data.command_execution_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [desired_state]
    data.desired_state = QuadDesiredState.deserialize(buffer, bufferOffset);
    // Deserialize message field [state_estimate]
    data.state_estimate = QuadStateEstimate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += QuadDesiredState.getMessageSize(object.desired_state);
    length += QuadStateEstimate.getMessageSize(object.state_estimate);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quad_msgs/ControllerFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d0f199907489e337c0d2dad1e3e9d0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 tracking_ok
    
    # State machine of the controller
    int8 controller_state
    
    # Time at which the resulting control command should be executed
    time command_execution_time
    
    # Desired state used to compute the control command
    quad_msgs/QuadDesiredState desired_state
    
    # State estimate used to compute the control command
    quad_msgs/QuadStateEstimate state_estimate
    
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
    MSG: quad_msgs/QuadDesiredState
    # Quadrotor Desired State 
    
    Header header
    
    # 3D position in world frame [m]
    geometry_msgs/Vector3 position
    
    # 3D velocity in world frame [m/s]
    geometry_msgs/Vector3 velocity
    
    # 3D acceleration in world frame [m/s^2]
    geometry_msgs/Vector3 acceleration
    
    # 3D jerk in world frame [m/s^3]
    geometry_msgs/Vector3 jerk
    
    # 3D snap in world frame [m/s^4]
    geometry_msgs/Vector3 snap
    
    # yaw angle with respect to world frame [rad]
    float64 yaw
    
    # angular velocity in the body z-direction [rad/s]
    float64 yaw_rate
    
    # angular acceleration in the body z-direction [rad/s^2]
    float64 yaw_acceleration
    
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
    ================================================================================
    MSG: quad_msgs/QuadStateEstimate
    # Quadrotor State Estimate 
    # This Message is published by an estimator
    
    Header header
    
    #
    int8 estimator_id
    
    # 3D position in world frame [m]
    geometry_msgs/Vector3 position
    
    # 3D velocity in world frame [m/s]
    geometry_msgs/Vector3 velocity
    
    # Orientation with respect to world frame []
    geometry_msgs/Quaternion orientation
    
    # Body rates in body frame [rad/s]
    geometry_msgs/Vector3 bodyrates
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControllerFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracking_ok !== undefined) {
      resolved.tracking_ok = msg.tracking_ok;
    }
    else {
      resolved.tracking_ok = 0
    }

    if (msg.controller_state !== undefined) {
      resolved.controller_state = msg.controller_state;
    }
    else {
      resolved.controller_state = 0
    }

    if (msg.command_execution_time !== undefined) {
      resolved.command_execution_time = msg.command_execution_time;
    }
    else {
      resolved.command_execution_time = {secs: 0, nsecs: 0}
    }

    if (msg.desired_state !== undefined) {
      resolved.desired_state = QuadDesiredState.Resolve(msg.desired_state)
    }
    else {
      resolved.desired_state = new QuadDesiredState()
    }

    if (msg.state_estimate !== undefined) {
      resolved.state_estimate = QuadStateEstimate.Resolve(msg.state_estimate)
    }
    else {
      resolved.state_estimate = new QuadStateEstimate()
    }

    return resolved;
    }
};

module.exports = ControllerFeedback;
