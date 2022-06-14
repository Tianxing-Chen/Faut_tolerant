; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude OnboardParameter.msg.html

(cl:defclass <OnboardParameter> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (param_id
    :reader param_id
    :initarg :param_id
    :type cl:string
    :initform "")
   (param_value
    :reader param_value
    :initarg :param_value
    :type cl:float
    :initform 0.0)
   (param_type
    :reader param_type
    :initarg :param_type
    :type cl:fixnum
    :initform 0)
   (param_count
    :reader param_count
    :initarg :param_count
    :type cl:fixnum
    :initform 0)
   (param_index
    :reader param_index
    :initarg :param_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OnboardParameter (<OnboardParameter>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OnboardParameter>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OnboardParameter)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<OnboardParameter> is deprecated: use quad_msgs-msg:OnboardParameter instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OnboardParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'param_id-val :lambda-list '(m))
(cl:defmethod param_id-val ((m <OnboardParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:param_id-val is deprecated.  Use quad_msgs-msg:param_id instead.")
  (param_id m))

(cl:ensure-generic-function 'param_value-val :lambda-list '(m))
(cl:defmethod param_value-val ((m <OnboardParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:param_value-val is deprecated.  Use quad_msgs-msg:param_value instead.")
  (param_value m))

(cl:ensure-generic-function 'param_type-val :lambda-list '(m))
(cl:defmethod param_type-val ((m <OnboardParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:param_type-val is deprecated.  Use quad_msgs-msg:param_type instead.")
  (param_type m))

(cl:ensure-generic-function 'param_count-val :lambda-list '(m))
(cl:defmethod param_count-val ((m <OnboardParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:param_count-val is deprecated.  Use quad_msgs-msg:param_count instead.")
  (param_count m))

(cl:ensure-generic-function 'param_index-val :lambda-list '(m))
(cl:defmethod param_index-val ((m <OnboardParameter>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:param_index-val is deprecated.  Use quad_msgs-msg:param_index instead.")
  (param_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OnboardParameter>) ostream)
  "Serializes a message object of type '<OnboardParameter>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'param_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'param_id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'param_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OnboardParameter>) istream)
  "Deserializes a message object of type '<OnboardParameter>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'param_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'param_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'param_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'param_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OnboardParameter>)))
  "Returns string type for a message object of type '<OnboardParameter>"
  "quad_msgs/OnboardParameter")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OnboardParameter)))
  "Returns string type for a message object of type 'OnboardParameter"
  "quad_msgs/OnboardParameter")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OnboardParameter>)))
  "Returns md5sum for a message object of type '<OnboardParameter>"
  "848b3224649dee188bd859cc1a9c4bbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OnboardParameter)))
  "Returns md5sum for a message object of type 'OnboardParameter"
  "848b3224649dee188bd859cc1a9c4bbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OnboardParameter>)))
  "Returns full string definition for message of type '<OnboardParameter>"
  (cl:format cl:nil "#Message type handling onboard parameters of the PX4~%~%Header header~%~%#Onboard parameter id (char[16])~%string param_id~%~%#Value of the parameter~%float64 param_value~%~%#Onboard parameter type according to the mavlink message: MAV_PARAM_TYPE~%uint8 param_type~%~%#Total number of onboard parameters~%uint16 param_count~%~%#Index of this onboard parameter~%uint16 param_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OnboardParameter)))
  "Returns full string definition for message of type 'OnboardParameter"
  (cl:format cl:nil "#Message type handling onboard parameters of the PX4~%~%Header header~%~%#Onboard parameter id (char[16])~%string param_id~%~%#Value of the parameter~%float64 param_value~%~%#Onboard parameter type according to the mavlink message: MAV_PARAM_TYPE~%uint8 param_type~%~%#Total number of onboard parameters~%uint16 param_count~%~%#Index of this onboard parameter~%uint16 param_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OnboardParameter>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'param_id))
     8
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OnboardParameter>))
  "Converts a ROS message object to a list"
  (cl:list 'OnboardParameter
    (cl:cons ':header (header msg))
    (cl:cons ':param_id (param_id msg))
    (cl:cons ':param_value (param_value msg))
    (cl:cons ':param_type (param_type msg))
    (cl:cons ':param_count (param_count msg))
    (cl:cons ':param_index (param_index msg))
))
