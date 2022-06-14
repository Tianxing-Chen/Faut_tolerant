;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::ControlCommand)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'ControlCommand (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::CONTROLCOMMAND")
  (make-package "QUAD_MSGS::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NONE*" (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(shadow '*NONE* (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(defconstant quad_msgs::ControlCommand::*NONE* 0)
(intern "*ANGLE*" (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(shadow '*ANGLE* (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(defconstant quad_msgs::ControlCommand::*ANGLE* 1)
(intern "*ANGLERATE*" (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(shadow '*ANGLERATE* (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(defconstant quad_msgs::ControlCommand::*ANGLERATE* 2)
(intern "*ROTTHROTTLE*" (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(shadow '*ROTTHROTTLE* (find-package "QUAD_MSGS::CONTROLCOMMAND"))
(defconstant quad_msgs::ControlCommand::*ROTTHROTTLE* 3)
(defclass quad_msgs::ControlCommand
  :super ros::object
  :slots (_header _control_mode _off _execution_time _orientation _bodyrates _angular_accelerations _thrust _mot_throttle _rotor_thrust ))

(defmethod quad_msgs::ControlCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control_mode __control_mode) 0)
    ((:off __off) nil)
    ((:execution_time __execution_time) (instance ros::time :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:bodyrates __bodyrates) (instance geometry_msgs::Vector3 :init))
    ((:angular_accelerations __angular_accelerations) (instance geometry_msgs::Vector3 :init))
    ((:thrust __thrust) 0.0)
    ((:mot_throttle __mot_throttle) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:rotor_thrust __rotor_thrust) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _control_mode (round __control_mode))
   (setq _off __off)
   (setq _execution_time __execution_time)
   (setq _orientation __orientation)
   (setq _bodyrates __bodyrates)
   (setq _angular_accelerations __angular_accelerations)
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
  (:off
   (&optional __off)
   (if __off (setq _off __off)) _off)
  (:execution_time
   (&optional __execution_time)
   (if __execution_time (setq _execution_time __execution_time)) _execution_time)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:bodyrates
   (&rest __bodyrates)
   (if (keywordp (car __bodyrates))
       (send* _bodyrates __bodyrates)
     (progn
       (if __bodyrates (setq _bodyrates (car __bodyrates)))
       _bodyrates)))
  (:angular_accelerations
   (&rest __angular_accelerations)
   (if (keywordp (car __angular_accelerations))
       (send* _angular_accelerations __angular_accelerations)
     (progn
       (if __angular_accelerations (setq _angular_accelerations (car __angular_accelerations)))
       _angular_accelerations)))
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
    ;; bool _off
    1
    ;; time _execution_time
    8
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _bodyrates
    (send _bodyrates :serialization-length)
    ;; geometry_msgs/Vector3 _angular_accelerations
    (send _angular_accelerations :serialization-length)
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
     ;; bool _off
       (if _off (write-byte -1 s) (write-byte 0 s))
     ;; time _execution_time
       (write-long (send _execution_time :sec) s) (write-long (send _execution_time :nsec) s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _bodyrates
       (send _bodyrates :serialize s)
     ;; geometry_msgs/Vector3 _angular_accelerations
       (send _angular_accelerations :serialize s)
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
   ;; bool _off
     (setq _off (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _execution_time
     (send _execution_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _execution_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _bodyrates
     (send _bodyrates :deserialize buf ptr-) (incf ptr- (send _bodyrates :serialization-length))
   ;; geometry_msgs/Vector3 _angular_accelerations
     (send _angular_accelerations :deserialize buf ptr-) (incf ptr- (send _angular_accelerations :serialization-length))
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

(setf (get quad_msgs::ControlCommand :md5sum-) "a4ea83396796aba2c3fbc0dae6c13858")
(setf (get quad_msgs::ControlCommand :datatype-) "quad_msgs/ControlCommand")
(setf (get quad_msgs::ControlCommand :definition-)
      "# Control Command
# This message is sent to a low level controller on the quadrotor

# control mode enums
uint8 NONE=0
uint8 ANGLE=1
uint8 ANGLERATE=2
uint8 ROTTHROTTLE=3


Header header

# Control mode as defined above
uint8 control_mode

# Flag whether controller was set to OFF
bool off

# Time at which this command should be executed
time execution_time

# Orientation of the body frame with respect to the world frame [-]
geometry_msgs/Quaternion orientation

# Body rates in body frame [rad/s]
# Note that in ANGLE mode the x-y-bodyrates are only feed forward terms computed from a reference trajectory
# Also in ANGLE mode, the z-bodyrate has to be from feedback control
geometry_msgs/Vector3 bodyrates

# Angular accelerations in body frame [rad/s^2]
geometry_msgs/Vector3 angular_accelerations

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

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :quad_msgs/ControlCommand "a4ea83396796aba2c3fbc0dae6c13858")


