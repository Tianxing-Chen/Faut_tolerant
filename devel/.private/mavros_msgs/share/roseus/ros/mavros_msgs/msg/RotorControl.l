;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::RotorControl)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'RotorControl (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::ROTORCONTROL")
  (make-package "MAVROS_MSGS::ROTORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude RotorControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavros_msgs::RotorControl
  :super ros::object
  :slots (_header _control_mode _thrust _mot_throttle _rotor_thrust ))

(defmethod mavros_msgs::RotorControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control_mode __control_mode) 0)
    ((:thrust __thrust) 0.0)
    ((:mot_throttle __mot_throttle) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:rotor_thrust __rotor_thrust) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _control_mode (round __control_mode))
   (setq _thrust (float __thrust))
   (setq _mot_throttle __mot_throttle)
   (setq _rotor_thrust __rotor_thrust)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:mot_throttle
   (&optional __mot_throttle)
   (if __mot_throttle (setq _mot_throttle __mot_throttle)) _mot_throttle)
  (:rotor_thrust
   (&optional __rotor_thrust)
   (if __rotor_thrust (setq _rotor_thrust __rotor_thrust)) _rotor_thrust)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _control_mode
    1
    ;; float64 _thrust
    8
    ;; float64[4] _mot_throttle
    (* 8    4)
    ;; float64[4] _rotor_thrust
    (* 8    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; float64 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[4] _mot_throttle
     (dotimes (i 4)
       (sys::poke (elt _mot_throttle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[4] _rotor_thrust
     (dotimes (i 4)
       (sys::poke (elt _rotor_thrust i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _thrust
     (setq _thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[4] _mot_throttle
   (dotimes (i (length _mot_throttle))
     (setf (elt _mot_throttle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[4] _rotor_thrust
   (dotimes (i (length _rotor_thrust))
     (setf (elt _rotor_thrust i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get mavros_msgs::RotorControl :md5sum-) "1897a820e48a9b32eaef11f9f222593b")
(setf (get mavros_msgs::RotorControl :datatype-) "mavros_msgs/RotorControl")
(setf (get mavros_msgs::RotorControl :definition-)
      "#This message is sent to a low level controller on the quadrotor

std_msgs/Header header
# Control mode as defined above
uint8 control_mode

# Collective mass normalized thrust [m/s^2]
float64 thrust

# Single rotor throttle [0-2000]
float64[4] mot_throttle

# Single rotor thrust
float64[4] rotor_thrust

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



(provide :mavros_msgs/RotorControl "1897a820e48a9b32eaef11f9f222593b")


