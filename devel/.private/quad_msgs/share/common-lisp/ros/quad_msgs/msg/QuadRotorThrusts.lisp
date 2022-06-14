; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude QuadRotorThrusts.msg.html

(cl:defclass <QuadRotorThrusts> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (thrust_1
    :reader thrust_1
    :initarg :thrust_1
    :type cl:float
    :initform 0.0)
   (thrust_2
    :reader thrust_2
    :initarg :thrust_2
    :type cl:float
    :initform 0.0)
   (thrust_3
    :reader thrust_3
    :initarg :thrust_3
    :type cl:float
    :initform 0.0)
   (thrust_4
    :reader thrust_4
    :initarg :thrust_4
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadRotorThrusts (<QuadRotorThrusts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadRotorThrusts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadRotorThrusts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<QuadRotorThrusts> is deprecated: use quad_msgs-msg:QuadRotorThrusts instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadRotorThrusts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'thrust_1-val :lambda-list '(m))
(cl:defmethod thrust_1-val ((m <QuadRotorThrusts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:thrust_1-val is deprecated.  Use quad_msgs-msg:thrust_1 instead.")
  (thrust_1 m))

(cl:ensure-generic-function 'thrust_2-val :lambda-list '(m))
(cl:defmethod thrust_2-val ((m <QuadRotorThrusts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:thrust_2-val is deprecated.  Use quad_msgs-msg:thrust_2 instead.")
  (thrust_2 m))

(cl:ensure-generic-function 'thrust_3-val :lambda-list '(m))
(cl:defmethod thrust_3-val ((m <QuadRotorThrusts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:thrust_3-val is deprecated.  Use quad_msgs-msg:thrust_3 instead.")
  (thrust_3 m))

(cl:ensure-generic-function 'thrust_4-val :lambda-list '(m))
(cl:defmethod thrust_4-val ((m <QuadRotorThrusts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:thrust_4-val is deprecated.  Use quad_msgs-msg:thrust_4 instead.")
  (thrust_4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadRotorThrusts>) ostream)
  "Serializes a message object of type '<QuadRotorThrusts>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'thrust_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'thrust_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'thrust_3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'thrust_4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadRotorThrusts>) istream)
  "Deserializes a message object of type '<QuadRotorThrusts>"
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
    (cl:setf (cl:slot-value msg 'thrust_1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust_2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust_3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust_4) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadRotorThrusts>)))
  "Returns string type for a message object of type '<QuadRotorThrusts>"
  "quad_msgs/QuadRotorThrusts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadRotorThrusts)))
  "Returns string type for a message object of type 'QuadRotorThrusts"
  "quad_msgs/QuadRotorThrusts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadRotorThrusts>)))
  "Returns md5sum for a message object of type '<QuadRotorThrusts>"
  "971e125a0994b8a82a3a4740294147b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadRotorThrusts)))
  "Returns md5sum for a message object of type 'QuadRotorThrusts"
  "971e125a0994b8a82a3a4740294147b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadRotorThrusts>)))
  "Returns full string definition for message of type '<QuadRotorThrusts>"
  (cl:format cl:nil "# Single rotor thrusts of a quadrotor~%# This message is received from onboard (the actually applied rotor thrusts)~%~%Header header~%~%# Single rotor thrusts [N]~%float64 thrust_1~%float64 thrust_2~%float64 thrust_3~%float64 thrust_4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadRotorThrusts)))
  "Returns full string definition for message of type 'QuadRotorThrusts"
  (cl:format cl:nil "# Single rotor thrusts of a quadrotor~%# This message is received from onboard (the actually applied rotor thrusts)~%~%Header header~%~%# Single rotor thrusts [N]~%float64 thrust_1~%float64 thrust_2~%float64 thrust_3~%float64 thrust_4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadRotorThrusts>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadRotorThrusts>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadRotorThrusts
    (cl:cons ':header (header msg))
    (cl:cons ':thrust_1 (thrust_1 msg))
    (cl:cons ':thrust_2 (thrust_2 msg))
    (cl:cons ':thrust_3 (thrust_3 msg))
    (cl:cons ':thrust_4 (thrust_4 msg))
))
