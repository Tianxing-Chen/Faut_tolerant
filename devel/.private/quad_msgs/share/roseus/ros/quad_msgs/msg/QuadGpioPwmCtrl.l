;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::QuadGpioPwmCtrl)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'QuadGpioPwmCtrl (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::QUADGPIOPWMCTRL")
  (make-package "QUAD_MSGS::QUADGPIOPWMCTRL"))

(in-package "ROS")
;;//! \htmlinclude QuadGpioPwmCtrl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*DEVICE_FMU*" (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(shadow '*DEVICE_FMU* (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(defconstant quad_msgs::QuadGpioPwmCtrl::*DEVICE_FMU* 0)
(intern "*DEVICE_PCA9685_0*" (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(shadow '*DEVICE_PCA9685_0* (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(defconstant quad_msgs::QuadGpioPwmCtrl::*DEVICE_PCA9685_0* 1)
(intern "*DEVICE_PCA9685_1*" (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(shadow '*DEVICE_PCA9685_1* (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(defconstant quad_msgs::QuadGpioPwmCtrl::*DEVICE_PCA9685_1* 2)
(intern "*DEVICE_PCA9685_2*" (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(shadow '*DEVICE_PCA9685_2* (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(defconstant quad_msgs::QuadGpioPwmCtrl::*DEVICE_PCA9685_2* 3)
(intern "*DEVICE_PCA9685_3*" (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(shadow '*DEVICE_PCA9685_3* (find-package "QUAD_MSGS::QUADGPIOPWMCTRL"))
(defconstant quad_msgs::QuadGpioPwmCtrl::*DEVICE_PCA9685_3* 4)
(defclass quad_msgs::QuadGpioPwmCtrl
  :super ros::object
  :slots (_header _device _channel _value ))

(defmethod quad_msgs::QuadGpioPwmCtrl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:device __device) 0)
    ((:channel __channel) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _device (round __device))
   (setq _channel (round __channel))
   (setq _value (float __value))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:device
   (&optional __device)
   (if __device (setq _device __device)) _device)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _device
    1
    ;; uint8 _channel
    1
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _device
       (write-byte _device s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _device
     (setq _device (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get quad_msgs::QuadGpioPwmCtrl :md5sum-) "dc150882d4dd0ef7629ae2efcdbe50fd")
(setf (get quad_msgs::QuadGpioPwmCtrl :datatype-) "quad_msgs/QuadGpioPwmCtrl")
(setf (get quad_msgs::QuadGpioPwmCtrl :definition-)
      "# Control message for GPIO and servo controllers atttached to the FMU
#

Header header

# Device ID: Selects the device to which the commands are forwarded. Following device IDs are valid:
# PX4FMU GPIOs (only GPIO_EXT2 can be used; GPIO_EXT1 is reserved for timesynchronization)
uint8 DEVICE_FMU=0

# PCA9685 PWM controller chip: This device is mounted on the PWR board and connected to the FMU through I2C.
# For different addresses can be set for the chip with two jumpers on the PWR board (A0, A1): 
# Address 0x40 (default)
uint8 DEVICE_PCA9685_0=1
# Address 0x41
uint8 DEVICE_PCA9685_1=2
# Address 0x42
uint8 DEVICE_PCA9685_2=3
# Address 0x43
uint8 DEVICE_PCA9685_3=4

# Device ID:
uint8 device


# Channel: Selects the GPIO or the PWM channel
# For DEVICE_FMU:  {2}
# For DEVICE_PCA9685: [0, 7]
uint8 channel


# Value which should be assigned to the selected channel.
# For a GPIO: {0,1}
# For a Servo pitch: [10.0, 11.0]
# For a PWM Duty cycle: [20.0f, 21.0f]
float32 value



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

")



(provide :quad_msgs/QuadGpioPwmCtrl "dc150882d4dd0ef7629ae2efcdbe50fd")


