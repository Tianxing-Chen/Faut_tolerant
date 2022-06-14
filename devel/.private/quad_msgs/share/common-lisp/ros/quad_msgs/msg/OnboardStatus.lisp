; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude OnboardStatus.msg.html

(cl:defclass <OnboardStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (commander_state
    :reader commander_state
    :initarg :commander_state
    :type cl:fixnum
    :initform 0)
   (battery_state
    :reader battery_state
    :initarg :battery_state
    :type cl:fixnum
    :initform 0)
   (control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (pcb_temperature
    :reader pcb_temperature
    :initarg :pcb_temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass OnboardStatus (<OnboardStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OnboardStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OnboardStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<OnboardStatus> is deprecated: use quad_msgs-msg:OnboardStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OnboardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'commander_state-val :lambda-list '(m))
(cl:defmethod commander_state-val ((m <OnboardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:commander_state-val is deprecated.  Use quad_msgs-msg:commander_state instead.")
  (commander_state m))

(cl:ensure-generic-function 'battery_state-val :lambda-list '(m))
(cl:defmethod battery_state-val ((m <OnboardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:battery_state-val is deprecated.  Use quad_msgs-msg:battery_state instead.")
  (battery_state m))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <OnboardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:control_mode-val is deprecated.  Use quad_msgs-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <OnboardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:battery_voltage-val is deprecated.  Use quad_msgs-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'pcb_temperature-val :lambda-list '(m))
(cl:defmethod pcb_temperature-val ((m <OnboardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:pcb_temperature-val is deprecated.  Use quad_msgs-msg:pcb_temperature instead.")
  (pcb_temperature m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OnboardStatus>)))
    "Constants for message type '<OnboardStatus>"
  '((:LANDED . 0)
    (:AUTONOMOUS_FLYING . 1)
    (:MANUAL_FLYING . 2)
    (:EMERGENCY_LANDING . 3)
    (:INVALID . 0)
    (:GOOD . 1)
    (:LOW . 2)
    (:CRITICAL . 3)
    (:RATE_MODE . 0)
    (:ATTITUDE_MODE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OnboardStatus)))
    "Constants for message type 'OnboardStatus"
  '((:LANDED . 0)
    (:AUTONOMOUS_FLYING . 1)
    (:MANUAL_FLYING . 2)
    (:EMERGENCY_LANDING . 3)
    (:INVALID . 0)
    (:GOOD . 1)
    (:LOW . 2)
    (:CRITICAL . 3)
    (:RATE_MODE . 0)
    (:ATTITUDE_MODE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OnboardStatus>) ostream)
  "Serializes a message object of type '<OnboardStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'commander_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pcb_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OnboardStatus>) istream)
  "Deserializes a message object of type '<OnboardStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'commander_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pcb_temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OnboardStatus>)))
  "Returns string type for a message object of type '<OnboardStatus>"
  "quad_msgs/OnboardStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OnboardStatus)))
  "Returns string type for a message object of type 'OnboardStatus"
  "quad_msgs/OnboardStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OnboardStatus>)))
  "Returns md5sum for a message object of type '<OnboardStatus>"
  "ab2e46231b964a6f29dabac1bc0f4937")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OnboardStatus)))
  "Returns md5sum for a message object of type 'OnboardStatus"
  "ab2e46231b964a6f29dabac1bc0f4937")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OnboardStatus>)))
  "Returns full string definition for message of type '<OnboardStatus>"
  (cl:format cl:nil "# Status message from the PX4~%~%# commander state enums~%uint8 LANDED=0~%uint8 AUTONOMOUS_FLYING=1~%uint8 MANUAL_FLYING=2~%uint8 EMERGENCY_LANDING=3~%~%# battery state enums~%uint8 INVALID=0~%uint8 GOOD=1~%uint8 LOW=2~%uint8 CRITICAL=3~%~%        ~%# control mode enums~%uint8 RATE_MODE=0~%uint8 ATTITUDE_MODE=1~%~%Header header~%~%uint8 commander_state~%uint8 battery_state~%uint8 control_mode~%float64 battery_voltage~%float32 pcb_temperature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OnboardStatus)))
  "Returns full string definition for message of type 'OnboardStatus"
  (cl:format cl:nil "# Status message from the PX4~%~%# commander state enums~%uint8 LANDED=0~%uint8 AUTONOMOUS_FLYING=1~%uint8 MANUAL_FLYING=2~%uint8 EMERGENCY_LANDING=3~%~%# battery state enums~%uint8 INVALID=0~%uint8 GOOD=1~%uint8 LOW=2~%uint8 CRITICAL=3~%~%        ~%# control mode enums~%uint8 RATE_MODE=0~%uint8 ATTITUDE_MODE=1~%~%Header header~%~%uint8 commander_state~%uint8 battery_state~%uint8 control_mode~%float64 battery_voltage~%float32 pcb_temperature~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OnboardStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OnboardStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OnboardStatus
    (cl:cons ':header (header msg))
    (cl:cons ':commander_state (commander_state msg))
    (cl:cons ':battery_state (battery_state msg))
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':pcb_temperature (pcb_temperature msg))
))
