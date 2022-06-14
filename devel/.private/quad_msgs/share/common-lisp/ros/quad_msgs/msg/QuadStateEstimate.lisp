; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude QuadStateEstimate.msg.html

(cl:defclass <QuadStateEstimate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (estimator_id
    :reader estimator_id
    :initarg :estimator_id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (bodyrates
    :reader bodyrates
    :initarg :bodyrates
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass QuadStateEstimate (<QuadStateEstimate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadStateEstimate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadStateEstimate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<QuadStateEstimate> is deprecated: use quad_msgs-msg:QuadStateEstimate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'estimator_id-val :lambda-list '(m))
(cl:defmethod estimator_id-val ((m <QuadStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:estimator_id-val is deprecated.  Use quad_msgs-msg:estimator_id instead.")
  (estimator_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <QuadStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:position-val is deprecated.  Use quad_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <QuadStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:velocity-val is deprecated.  Use quad_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <QuadStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:orientation-val is deprecated.  Use quad_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'bodyrates-val :lambda-list '(m))
(cl:defmethod bodyrates-val ((m <QuadStateEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:bodyrates-val is deprecated.  Use quad_msgs-msg:bodyrates instead.")
  (bodyrates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadStateEstimate>) ostream)
  "Serializes a message object of type '<QuadStateEstimate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'estimator_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bodyrates) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadStateEstimate>) istream)
  "Deserializes a message object of type '<QuadStateEstimate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'estimator_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bodyrates) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadStateEstimate>)))
  "Returns string type for a message object of type '<QuadStateEstimate>"
  "quad_msgs/QuadStateEstimate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadStateEstimate)))
  "Returns string type for a message object of type 'QuadStateEstimate"
  "quad_msgs/QuadStateEstimate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadStateEstimate>)))
  "Returns md5sum for a message object of type '<QuadStateEstimate>"
  "10e1136b2da43c5b126470661510cf3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadStateEstimate)))
  "Returns md5sum for a message object of type 'QuadStateEstimate"
  "10e1136b2da43c5b126470661510cf3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadStateEstimate>)))
  "Returns full string definition for message of type '<QuadStateEstimate>"
  (cl:format cl:nil "# Quadrotor State Estimate ~%# This Message is published by an estimator~%~%Header header~%~%#~%int8 estimator_id~%~%# 3D position in world frame [m]~%geometry_msgs/Vector3 position~%~%# 3D velocity in world frame [m/s]~%geometry_msgs/Vector3 velocity~%~%# Orientation with respect to world frame []~%geometry_msgs/Quaternion orientation~%~%# Body rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadStateEstimate)))
  "Returns full string definition for message of type 'QuadStateEstimate"
  (cl:format cl:nil "# Quadrotor State Estimate ~%# This Message is published by an estimator~%~%Header header~%~%#~%int8 estimator_id~%~%# 3D position in world frame [m]~%geometry_msgs/Vector3 position~%~%# 3D velocity in world frame [m/s]~%geometry_msgs/Vector3 velocity~%~%# Orientation with respect to world frame []~%geometry_msgs/Quaternion orientation~%~%# Body rates in body frame [rad/s]~%geometry_msgs/Vector3 bodyrates~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadStateEstimate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bodyrates))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadStateEstimate>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadStateEstimate
    (cl:cons ':header (header msg))
    (cl:cons ':estimator_id (estimator_id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':bodyrates (bodyrates msg))
))
