; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude ControllerFeedback.msg.html

(cl:defclass <ControllerFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tracking_ok
    :reader tracking_ok
    :initarg :tracking_ok
    :type cl:fixnum
    :initform 0)
   (controller_state
    :reader controller_state
    :initarg :controller_state
    :type cl:fixnum
    :initform 0)
   (command_execution_time
    :reader command_execution_time
    :initarg :command_execution_time
    :type cl:real
    :initform 0)
   (desired_state
    :reader desired_state
    :initarg :desired_state
    :type quad_msgs-msg:QuadDesiredState
    :initform (cl:make-instance 'quad_msgs-msg:QuadDesiredState))
   (state_estimate
    :reader state_estimate
    :initarg :state_estimate
    :type quad_msgs-msg:QuadStateEstimate
    :initform (cl:make-instance 'quad_msgs-msg:QuadStateEstimate)))
)

(cl:defclass ControllerFeedback (<ControllerFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControllerFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControllerFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<ControllerFeedback> is deprecated: use quad_msgs-msg:ControllerFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tracking_ok-val :lambda-list '(m))
(cl:defmethod tracking_ok-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:tracking_ok-val is deprecated.  Use quad_msgs-msg:tracking_ok instead.")
  (tracking_ok m))

(cl:ensure-generic-function 'controller_state-val :lambda-list '(m))
(cl:defmethod controller_state-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:controller_state-val is deprecated.  Use quad_msgs-msg:controller_state instead.")
  (controller_state m))

(cl:ensure-generic-function 'command_execution_time-val :lambda-list '(m))
(cl:defmethod command_execution_time-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:command_execution_time-val is deprecated.  Use quad_msgs-msg:command_execution_time instead.")
  (command_execution_time m))

(cl:ensure-generic-function 'desired_state-val :lambda-list '(m))
(cl:defmethod desired_state-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:desired_state-val is deprecated.  Use quad_msgs-msg:desired_state instead.")
  (desired_state m))

(cl:ensure-generic-function 'state_estimate-val :lambda-list '(m))
(cl:defmethod state_estimate-val ((m <ControllerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:state_estimate-val is deprecated.  Use quad_msgs-msg:state_estimate instead.")
  (state_estimate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControllerFeedback>) ostream)
  "Serializes a message object of type '<ControllerFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tracking_ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'controller_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'command_execution_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'command_execution_time) (cl:floor (cl:slot-value msg 'command_execution_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_estimate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControllerFeedback>) istream)
  "Deserializes a message object of type '<ControllerFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tracking_ok) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controller_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_execution_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_estimate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControllerFeedback>)))
  "Returns string type for a message object of type '<ControllerFeedback>"
  "quad_msgs/ControllerFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControllerFeedback)))
  "Returns string type for a message object of type 'ControllerFeedback"
  "quad_msgs/ControllerFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControllerFeedback>)))
  "Returns md5sum for a message object of type '<ControllerFeedback>"
  "2d0f199907489e337c0d2dad1e3e9d0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControllerFeedback)))
  "Returns md5sum for a message object of type 'ControllerFeedback"
  "2d0f199907489e337c0d2dad1e3e9d0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControllerFeedback>)))
  "Returns full string definition for message of type '<ControllerFeedback>"
  (cl:format cl:nil "Header header~%~%int8 tracking_ok~%~%# State machine of the controller~%int8 controller_state~%~%# Time at which the resulting control command should be executed~%time command_execution_time~%~%# Desired state used to compute the control command~%quad_msgs/QuadDesiredState desired_state~%~%# State estimate used to compute the control command~%quad_msgs/QuadStateEstimate state_estimate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: quad_msgs/QuadDesiredState~%# Quadrotor Desired State ~%~%Header header~%~%# 3D position in world frame [m]~%geometry_msgs/Vector3 position~%~%# 3D velocity in world frame [m/s]~%geometry_msgs/Vector3 velocity~%~%# 3D acceleration in world frame [m/s^2]~%geometry_msgs/Vector3 acceleration~%~%# 3D jerk in world frame [m/s^3]~%geometry_msgs/Vector3 jerk~%~%# 3D snap in world frame [m/s^4]~%geometry_msgs/Vector3 snap~%~%# yaw angle with respect to world frame [rad]~%float64 yaw~%~%# angular velocity in the body z-direction [rad/s]~%float64 yaw_rate~%~%# angular acceleration in the body z-direction [rad/s^2]~%float64 yaw_acceleration~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: quad_msgs/QuadStateEstimate~%# Quadrotor State Estimate ~%# This Message is published by an estimator~%~%Header header~%~%#~%int8 estimator_id~%~%# 3D position in world frame [m]~%geometry_msgs/Vector3 position~%~%# 3D velocity in world frame [m/s]~%geometry_msgs/Vector3 velocity~%~%# Orientation with respect to world frame []~%geometry_msgs/Quaternion orientation~%~%# Body rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControllerFeedback)))
  "Returns full string definition for message of type 'ControllerFeedback"
  (cl:format cl:nil "Header header~%~%int8 tracking_ok~%~%# State machine of the controller~%int8 controller_state~%~%# Time at which the resulting control command should be executed~%time command_execution_time~%~%# Desired state used to compute the control command~%quad_msgs/QuadDesiredState desired_state~%~%# State estimate used to compute the control command~%quad_msgs/QuadStateEstimate state_estimate~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: quad_msgs/QuadDesiredState~%# Quadrotor Desired State ~%~%Header header~%~%# 3D position in world frame [m]~%geometry_msgs/Vector3 position~%~%# 3D velocity in world frame [m/s]~%geometry_msgs/Vector3 velocity~%~%# 3D acceleration in world frame [m/s^2]~%geometry_msgs/Vector3 acceleration~%~%# 3D jerk in world frame [m/s^3]~%geometry_msgs/Vector3 jerk~%~%# 3D snap in world frame [m/s^4]~%geometry_msgs/Vector3 snap~%~%# yaw angle with respect to world frame [rad]~%float64 yaw~%~%# angular velocity in the body z-direction [rad/s]~%float64 yaw_rate~%~%# angular acceleration in the body z-direction [rad/s^2]~%float64 yaw_acceleration~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: quad_msgs/QuadStateEstimate~%# Quadrotor State Estimate ~%# This Message is published by an estimator~%~%Header header~%~%#~%int8 estimator_id~%~%# 3D position in world frame [m]~%geometry_msgs/Vector3 position~%~%# 3D velocity in world frame [m/s]~%geometry_msgs/Vector3 velocity~%~%# Orientation with respect to world frame []~%geometry_msgs/Quaternion orientation~%~%# Body rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControllerFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_estimate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControllerFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ControllerFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':tracking_ok (tracking_ok msg))
    (cl:cons ':controller_state (controller_state msg))
    (cl:cons ':command_execution_time (command_execution_time msg))
    (cl:cons ':desired_state (desired_state msg))
    (cl:cons ':state_estimate (state_estimate msg))
))
