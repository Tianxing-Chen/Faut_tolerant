; Auto-generated. Do not edit!


(cl:in-package px4_test_pkg-srv)


;//! \htmlinclude Mission-request.msg.html

(cl:defclass <Mission-request> (roslisp-msg-protocol:ros-message)
  ((mission
    :reader mission
    :initarg :mission
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Mission-request (<Mission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_test_pkg-srv:<Mission-request> is deprecated: use px4_test_pkg-srv:Mission-request instead.")))

(cl:ensure-generic-function 'mission-val :lambda-list '(m))
(cl:defmethod mission-val ((m <Mission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_test_pkg-srv:mission-val is deprecated.  Use px4_test_pkg-srv:mission instead.")
  (mission m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Mission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_test_pkg-srv:x-val is deprecated.  Use px4_test_pkg-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Mission-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_test_pkg-srv:y-val is deprecated.  Use px4_test_pkg-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Mission-request>)))
    "Constants for message type '<Mission-request>"
  '((:TAKEOFF . 1)
    (:MOAE . 2)
    (:LAND . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Mission-request)))
    "Constants for message type 'Mission-request"
  '((:TAKEOFF . 1)
    (:MOAE . 2)
    (:LAND . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mission-request>) ostream)
  "Serializes a message object of type '<Mission-request>"
  (cl:let* ((signed (cl:slot-value msg 'mission)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mission-request>) istream)
  "Deserializes a message object of type '<Mission-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mission-request>)))
  "Returns string type for a service object of type '<Mission-request>"
  "px4_test_pkg/MissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mission-request)))
  "Returns string type for a service object of type 'Mission-request"
  "px4_test_pkg/MissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mission-request>)))
  "Returns md5sum for a message object of type '<Mission-request>"
  "5a500ca8314e489419937af52c2e5ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mission-request)))
  "Returns md5sum for a message object of type 'Mission-request"
  "5a500ca8314e489419937af52c2e5ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mission-request>)))
  "Returns full string definition for message of type '<Mission-request>"
  (cl:format cl:nil "int8 TAKEOFF = 1~%int8 MOAE = 2~%int8 LAND = 3~%~%int8 mission~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mission-request)))
  "Returns full string definition for message of type 'Mission-request"
  (cl:format cl:nil "int8 TAKEOFF = 1~%int8 MOAE = 2~%int8 LAND = 3~%~%int8 mission~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mission-request>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Mission-request
    (cl:cons ':mission (mission msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Mission-response.msg.html

(cl:defclass <Mission-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Mission-response (<Mission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_test_pkg-srv:<Mission-response> is deprecated: use px4_test_pkg-srv:Mission-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Mission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_test_pkg-srv:success-val is deprecated.  Use px4_test_pkg-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Mission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_test_pkg-srv:message-val is deprecated.  Use px4_test_pkg-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mission-response>) ostream)
  "Serializes a message object of type '<Mission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mission-response>) istream)
  "Deserializes a message object of type '<Mission-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mission-response>)))
  "Returns string type for a service object of type '<Mission-response>"
  "px4_test_pkg/MissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mission-response)))
  "Returns string type for a service object of type 'Mission-response"
  "px4_test_pkg/MissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mission-response>)))
  "Returns md5sum for a message object of type '<Mission-response>"
  "5a500ca8314e489419937af52c2e5ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mission-response)))
  "Returns md5sum for a message object of type 'Mission-response"
  "5a500ca8314e489419937af52c2e5ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mission-response>)))
  "Returns full string definition for message of type '<Mission-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mission-response)))
  "Returns full string definition for message of type 'Mission-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mission-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Mission-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Mission)))
  'Mission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Mission)))
  'Mission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mission)))
  "Returns string type for a service object of type '<Mission>"
  "px4_test_pkg/Mission")