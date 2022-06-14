; Auto-generated. Do not edit!


(cl:in-package quad_msgs-msg)


;//! \htmlinclude QuadGpioPwmCtrl.msg.html

(cl:defclass <QuadGpioPwmCtrl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (device
    :reader device
    :initarg :device
    :type cl:fixnum
    :initform 0)
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass QuadGpioPwmCtrl (<QuadGpioPwmCtrl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuadGpioPwmCtrl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuadGpioPwmCtrl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name quad_msgs-msg:<QuadGpioPwmCtrl> is deprecated: use quad_msgs-msg:QuadGpioPwmCtrl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <QuadGpioPwmCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:header-val is deprecated.  Use quad_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'device-val :lambda-list '(m))
(cl:defmethod device-val ((m <QuadGpioPwmCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:device-val is deprecated.  Use quad_msgs-msg:device instead.")
  (device m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <QuadGpioPwmCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:channel-val is deprecated.  Use quad_msgs-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <QuadGpioPwmCtrl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader quad_msgs-msg:value-val is deprecated.  Use quad_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<QuadGpioPwmCtrl>)))
    "Constants for message type '<QuadGpioPwmCtrl>"
  '((:DEVICE_FMU . 0)
    (:DEVICE_PCA9685_0 . 1)
    (:DEVICE_PCA9685_1 . 2)
    (:DEVICE_PCA9685_2 . 3)
    (:DEVICE_PCA9685_3 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'QuadGpioPwmCtrl)))
    "Constants for message type 'QuadGpioPwmCtrl"
  '((:DEVICE_FMU . 0)
    (:DEVICE_PCA9685_0 . 1)
    (:DEVICE_PCA9685_1 . 2)
    (:DEVICE_PCA9685_2 . 3)
    (:DEVICE_PCA9685_3 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuadGpioPwmCtrl>) ostream)
  "Serializes a message object of type '<QuadGpioPwmCtrl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'device)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuadGpioPwmCtrl>) istream)
  "Deserializes a message object of type '<QuadGpioPwmCtrl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'device)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuadGpioPwmCtrl>)))
  "Returns string type for a message object of type '<QuadGpioPwmCtrl>"
  "quad_msgs/QuadGpioPwmCtrl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuadGpioPwmCtrl)))
  "Returns string type for a message object of type 'QuadGpioPwmCtrl"
  "quad_msgs/QuadGpioPwmCtrl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuadGpioPwmCtrl>)))
  "Returns md5sum for a message object of type '<QuadGpioPwmCtrl>"
  "dc150882d4dd0ef7629ae2efcdbe50fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuadGpioPwmCtrl)))
  "Returns md5sum for a message object of type 'QuadGpioPwmCtrl"
  "dc150882d4dd0ef7629ae2efcdbe50fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuadGpioPwmCtrl>)))
  "Returns full string definition for message of type '<QuadGpioPwmCtrl>"
  (cl:format cl:nil "# Control message for GPIO and servo controllers atttached to the FMU~%#~%~%Header header~%~%# Device ID: Selects the device to which the commands are forwarded. Following device IDs are valid:~%# PX4FMU GPIOs (only GPIO_EXT2 can be used; GPIO_EXT1 is reserved for timesynchronization)~%uint8 DEVICE_FMU=0~%~%# PCA9685 PWM controller chip: This device is mounted on the PWR board and connected to the FMU through I2C.~%# For different addresses can be set for the chip with two jumpers on the PWR board (A0, A1): ~%# Address 0x40 (default)~%uint8 DEVICE_PCA9685_0=1~%# Address 0x41~%uint8 DEVICE_PCA9685_1=2~%# Address 0x42~%uint8 DEVICE_PCA9685_2=3~%# Address 0x43~%uint8 DEVICE_PCA9685_3=4~%~%# Device ID:~%uint8 device~%~%~%# Channel: Selects the GPIO or the PWM channel~%# For DEVICE_FMU:  {2}~%# For DEVICE_PCA9685: [0, 7]~%uint8 channel~%~%~%# Value which should be assigned to the selected channel.~%# For a GPIO: {0,1}~%# For a Servo pitch: [10.0, 11.0]~%# For a PWM Duty cycle: [20.0f, 21.0f]~%float32 value~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuadGpioPwmCtrl)))
  "Returns full string definition for message of type 'QuadGpioPwmCtrl"
  (cl:format cl:nil "# Control message for GPIO and servo controllers atttached to the FMU~%#~%~%Header header~%~%# Device ID: Selects the device to which the commands are forwarded. Following device IDs are valid:~%# PX4FMU GPIOs (only GPIO_EXT2 can be used; GPIO_EXT1 is reserved for timesynchronization)~%uint8 DEVICE_FMU=0~%~%# PCA9685 PWM controller chip: This device is mounted on the PWR board and connected to the FMU through I2C.~%# For different addresses can be set for the chip with two jumpers on the PWR board (A0, A1): ~%# Address 0x40 (default)~%uint8 DEVICE_PCA9685_0=1~%# Address 0x41~%uint8 DEVICE_PCA9685_1=2~%# Address 0x42~%uint8 DEVICE_PCA9685_2=3~%# Address 0x43~%uint8 DEVICE_PCA9685_3=4~%~%# Device ID:~%uint8 device~%~%~%# Channel: Selects the GPIO or the PWM channel~%# For DEVICE_FMU:  {2}~%# For DEVICE_PCA9685: [0, 7]~%uint8 channel~%~%~%# Value which should be assigned to the selected channel.~%# For a GPIO: {0,1}~%# For a Servo pitch: [10.0, 11.0]~%# For a PWM Duty cycle: [20.0f, 21.0f]~%float32 value~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuadGpioPwmCtrl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuadGpioPwmCtrl>))
  "Converts a ROS message object to a list"
  (cl:list 'QuadGpioPwmCtrl
    (cl:cons ':header (header msg))
    (cl:cons ':device (device msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':value (value msg))
))
