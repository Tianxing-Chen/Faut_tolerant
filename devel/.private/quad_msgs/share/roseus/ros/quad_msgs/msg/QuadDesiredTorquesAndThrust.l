;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::QuadDesiredTorquesAndThrust)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'QuadDesiredTorquesAndThrust (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::QUADDESIREDTORQUESANDTHRUST")
  (make-package "QUAD_MSGS::QUADDESIREDTORQUESANDTHRUST"))

(in-package "ROS")
;;//! \htmlinclude QuadDesiredTorquesAndThrust.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::QuadDesiredTorquesAndThrust
  :super ros::object
  :slots (_header _roll_torque _pitch_torque _yaw_torque _normalized_thrust ))

(defmethod quad_msgs::QuadDesiredTorquesAndThrust
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roll_torque __roll_torque) 0.0)
    ((:pitch_torque __pitch_torque) 0.0)
    ((:yaw_torque __yaw_torque) 0.0)
    ((:normalized_thrust __normalized_thrust) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _roll_torque (float __roll_torque))
   (setq _pitch_torque (float __pitch_torque))
   (setq _yaw_torque (float __yaw_torque))
   (setq _normalized_thrust (float __normalized_thrust))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:roll_torque
   (&optional __roll_torque)
   (if __roll_torque (setq _roll_torque __roll_torque)) _roll_torque)
  (:pitch_torque
   (&optional __pitch_torque)
   (if __pitch_torque (setq _pitch_torque __pitch_torque)) _pitch_torque)
  (:yaw_torque
   (&optional __yaw_torque)
   (if __yaw_torque (setq _yaw_torque __yaw_torque)) _yaw_torque)
  (:normalized_thrust
   (&optional __normalized_thrust)
   (if __normalized_thrust (setq _normalized_thrust __normalized_thrust)) _normalized_thrust)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _roll_torque
    8
    ;; float64 _pitch_torque
    8
    ;; float64 _yaw_torque
    8
    ;; float64 _normalized_thrust
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _roll_torque
       (sys::poke _roll_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_torque
       (sys::poke _pitch_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_torque
       (sys::poke _yaw_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _normalized_thrust
       (sys::poke _normalized_thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _roll_torque
     (setq _roll_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_torque
     (setq _pitch_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_torque
     (setq _yaw_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _normalized_thrust
     (setq _normalized_thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quad_msgs::QuadDesiredTorquesAndThrust :md5sum-) "5eb0ff0d044d837037e12925a221c263")
(setf (get quad_msgs::QuadDesiredTorquesAndThrust :datatype-) "quad_msgs/QuadDesiredTorquesAndThrust")
(setf (get quad_msgs::QuadDesiredTorquesAndThrust :definition-)
      "# Quadrotor Desired Torque and Thrust

Header header

float64 roll_torque
float64 pitch_torque
float64 yaw_torque
float64 normalized_thrust

#
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



(provide :quad_msgs/QuadDesiredTorquesAndThrust "5eb0ff0d044d837037e12925a221c263")


