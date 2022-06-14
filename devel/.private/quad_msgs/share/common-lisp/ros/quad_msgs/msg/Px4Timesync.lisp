; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude Px4Timesync.msg.html

(cl:defclass <Px4Timesync> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sync_id
    :reader sync_id
    :initarg :sync_id
    :type cl:integer
    :initform 0)
   (time_px4
    :reader time_px4
    :initarg :time_px4
    :type cl:integer
    :initform 0))
)

(cl:defclass Px4Timesync (<Px4Timesync>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Px4Timesync>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Px4Timesync)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<Px4Timesync> is deprecated: use quad_msgs-msg:Px4Timesync instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Px4Timesync>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sync_id-val :lambda-list '(m))
(cl:defmethod sync_id-val ((m <Px4Timesync>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:sync_id-val is deprecated.  Use quad_msgs-msg:sync_id instead.")
  (sync_id m))

(cl:ensure-generic-function 'time_px4-val :lambda-list '(m))
(cl:defmethod time_px4-val ((m <Px4Timesync>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:time_px4-val is deprecated.  Use quad_msgs-msg:time_px4 instead.")
  (time_px4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Px4Timesync>) ostream)
  "Serializes a message object of type '<Px4Timesync>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sync_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_px4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_px4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_px4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_px4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_px4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_px4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_px4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_px4)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Px4Timesync>) istream)
  "Deserializes a message object of type '<Px4Timesync>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sync_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'time_px4)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Px4Timesync>)))
  "Returns string type for a message object of type '<Px4Timesync>"
  "quad_msgs/Px4Timesync")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Px4Timesync)))
  "Returns string type for a message object of type 'Px4Timesync"
  "quad_msgs/Px4Timesync")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Px4Timesync>)))
  "Returns md5sum for a message object of type '<Px4Timesync>"
  "327517baa37dbcc4373715d2a46cae2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Px4Timesync)))
  "Returns md5sum for a message object of type 'Px4Timesync"
  "327517baa37dbcc4373715d2a46cae2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Px4Timesync>)))
  "Returns full string definition for message of type '<Px4Timesync>"
  (cl:format cl:nil "# Quadrotor State Estimate ~%# This Message is published by an estimator~%~%Header header~%~%# Sync id: not used yet~%int64 sync_id~%~%# PX4fmu timestamp~%uint64 time_px4~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Px4Timesync)))
  "Returns full string definition for message of type 'Px4Timesync"
  (cl:format cl:nil "# Quadrotor State Estimate ~%# This Message is published by an estimator~%~%Header header~%~%# Sync id: not used yet~%int64 sync_id~%~%# PX4fmu timestamp~%uint64 time_px4~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Px4Timesync>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Px4Timesync>))
  "Converts a ROS message object to a list"
  (cl:list 'Px4Timesync
    (cl:cons ':header (header msg))
    (cl:cons ':sync_id (sync_id msg))
    (cl:cons ':time_px4 (time_px4 msg))
))
