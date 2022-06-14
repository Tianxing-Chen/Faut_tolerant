; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude QuadDesiredTorquesAndThrust.msg.html

(cl:defclass <QuadDesiredTorquesAndThrust> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (roll_torque
    :reader roll_torque
    :initarg :roll_torque
    :type cl:float
    :initform 0.0)
   (pitch_torque
    :reader pitch_torque
    :initarg :pitch_torque
    :type cl:float
    :initform 0.0)
   (yaw_torque
    :reader yaw_torque
    :initarg :yaw_torque
    :type cl:float
    :initform 0.0)
   (normalized_thrust
    :reader normalized_thrust
    :initarg :normalized_thrust
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadDesiredTorquesAndThrust (<QuadDesiredTorquesAndThrust>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadDesiredTorquesAndThrust>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadDesiredTorquesAndThrust)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<QuadDesiredTorquesAndThrust> is deprecated: use quad_msgs-msg:QuadDesiredTorquesAndThrust instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadDesiredTorquesAndThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'roll_torque-val :lambda-list '(m))
(cl:defmethod roll_torque-val ((m <QuadDesiredTorquesAndThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:roll_torque-val is deprecated.  Use quad_msgs-msg:roll_torque instead.")
  (roll_torque m))

(cl:ensure-generic-function 'pitch_torque-val :lambda-list '(m))
(cl:defmethod pitch_torque-val ((m <QuadDesiredTorquesAndThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:pitch_torque-val is deprecated.  Use quad_msgs-msg:pitch_torque instead.")
  (pitch_torque m))

(cl:ensure-generic-function 'yaw_torque-val :lambda-list '(m))
(cl:defmethod yaw_torque-val ((m <QuadDesiredTorquesAndThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:yaw_torque-val is deprecated.  Use quad_msgs-msg:yaw_torque instead.")
  (yaw_torque m))

(cl:ensure-generic-function 'normalized_thrust-val :lambda-list '(m))
(cl:defmethod normalized_thrust-val ((m <QuadDesiredTorquesAndThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:normalized_thrust-val is deprecated.  Use quad_msgs-msg:normalized_thrust instead.")
  (normalized_thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadDesiredTorquesAndThrust>) ostream)
  "Serializes a message object of type '<QuadDesiredTorquesAndThrust>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'normalized_thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadDesiredTorquesAndThrust>) istream)
  "Deserializes a message object of type '<QuadDesiredTorquesAndThrust>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'normalized_thrust) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadDesiredTorquesAndThrust>)))
  "Returns string type for a message object of type '<QuadDesiredTorquesAndThrust>"
  "quad_msgs/QuadDesiredTorquesAndThrust")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadDesiredTorquesAndThrust)))
  "Returns string type for a message object of type 'QuadDesiredTorquesAndThrust"
  "quad_msgs/QuadDesiredTorquesAndThrust")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadDesiredTorquesAndThrust>)))
  "Returns md5sum for a message object of type '<QuadDesiredTorquesAndThrust>"
  "5eb0ff0d044d837037e12925a221c263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadDesiredTorquesAndThrust)))
  "Returns md5sum for a message object of type 'QuadDesiredTorquesAndThrust"
  "5eb0ff0d044d837037e12925a221c263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadDesiredTorquesAndThrust>)))
  "Returns full string definition for message of type '<QuadDesiredTorquesAndThrust>"
  (cl:format cl:nil "# Quadrotor Desired Torque and Thrust~%~%Header header~%~%float64 roll_torque~%float64 pitch_torque~%float64 yaw_torque~%float64 normalized_thrust~%~%#~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadDesiredTorquesAndThrust)))
  "Returns full string definition for message of type 'QuadDesiredTorquesAndThrust"
  (cl:format cl:nil "# Quadrotor Desired Torque and Thrust~%~%Header header~%~%float64 roll_torque~%float64 pitch_torque~%float64 yaw_torque~%float64 normalized_thrust~%~%#~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadDesiredTorquesAndThrust>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadDesiredTorquesAndThrust>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadDesiredTorquesAndThrust
    (cl:cons ':header (header msg))
    (cl:cons ':roll_torque (roll_torque msg))
    (cl:cons ':pitch_torque (pitch_torque msg))
    (cl:cons ':yaw_torque (yaw_torque msg))
    (cl:cons ':normalized_thrust (normalized_thrust msg))
))
