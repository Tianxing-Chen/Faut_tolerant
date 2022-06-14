;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::ControllerFeedback)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'ControllerFeedback (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::CONTROLLERFEEDBACK")
  (make-package "QUAD_MSGS::CONTROLLERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ControllerFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::ControllerFeedback
  :super ros::object
  :slots (_header _tracking_ok _controller_state _command_execution_time _desired_state _state_estimate ))

(defmethod quad_msgs::ControllerFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tracking_ok __tracking_ok) 0)
    ((:controller_state __controller_state) 0)
    ((:command_execution_time __command_execution_time) (instance ros::time :init))
    ((:desired_state __desired_state) (instance quad_msgs::QuadDesiredState :init))
    ((:state_estimate __state_estimate) (instance quad_msgs::QuadStateEstimate :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tracking_ok (round __tracking_ok))
   (setq _controller_state (round __controller_state))
   (setq _command_execution_time __command_execution_time)
   (setq _desired_state __desired_state)
   (setq _state_estimate __state_estimate)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tracking_ok
   (&optional __tracking_ok)
   (if __tracking_ok (setq _tracking_ok __tracking_ok)) _tracking_ok)
  (:controller_state
   (&optional __controller_state)
   (if __controller_state (setq _controller_state __controller_state)) _controller_state)
  (:command_execution_time
   (&optional __command_execution_time)
   (if __command_execution_time (setq _command_execution_time __command_execution_time)) _command_execution_time)
  (:desired_state
   (&rest __desired_state)
   (if (keywordp (car __desired_state))
       (send* _desired_state __desired_state)
     (progn
       (if __desired_state (setq _desired_state (car __desired_state)))
       _desired_state)))
  (:state_estimate
   (&rest __state_estimate)
   (if (keywordp (car __state_estimate))
       (send* _state_estimate __state_estimate)
     (progn
       (if __state_estimate (setq _state_estimate (car __state_estimate)))
       _state_estimate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _tracking_ok
    1
    ;; int8 _controller_state
    1
    ;; time _command_execution_time
    8
    ;; quad_msgs/QuadDesiredState _desired_state
    (send _desired_state :serialization-length)
    ;; quad_msgs/QuadStateEstimate _state_estimate
    (send _state_estimate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _tracking_ok
       (write-byte _tracking_ok s)
     ;; int8 _controller_state
       (write-byte _controller_state s)
     ;; time _command_execution_time
       (write-long (send _command_execution_time :sec) s) (write-long (send _command_execution_time :nsec) s)
     ;; quad_msgs/QuadDesiredState _desired_state
       (send _desired_state :serialize s)
     ;; quad_msgs/QuadStateEstimate _state_estimate
       (send _state_estimate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _tracking_ok
     (setq _tracking_ok (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _tracking_ok 127) (setq _tracking_ok (- _tracking_ok 256)))
   ;; int8 _controller_state
     (setq _controller_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _controller_state 127) (setq _controller_state (- _controller_state 256)))
   ;; time _command_execution_time
     (send _command_execution_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _command_execution_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; quad_msgs/QuadDesiredState _desired_state
     (send _desired_state :deserialize buf ptr-) (incf ptr- (send _desired_state :serialization-length))
   ;; quad_msgs/QuadStateEstimate _state_estimate
     (send _state_estimate :deserialize buf ptr-) (incf ptr- (send _state_estimate :serialization-length))
   ;;
   self)
  )

(setf (get quad_msgs::ControllerFeedback :md5sum-) "2d0f199907489e337c0d2dad1e3e9d0d")
(setf (get quad_msgs::ControllerFeedback :datatype-) "quad_msgs/ControllerFeedback")
(setf (get quad_msgs::ControllerFeedback :definition-)
      "Header header

int8 tracking_ok

# State machine of the controller
int8 controller_state

# Time at which the resulting control command should be executed
time command_execution_time

# Desired state used to compute the control command
quad_msgs/QuadDesiredState desired_state

# State estimate used to compute the control command
quad_msgs/QuadStateEstimate state_estimate

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
MSG: quad_msgs/QuadDesiredState
# Quadrotor Desired State 

Header header

# 3D position in world frame [m]
geometry_msgs/Vector3 position

# 3D velocity in world frame [m/s]
geometry_msgs/Vector3 velocity

# 3D acceleration in world frame [m/s^2]
geometry_msgs/Vector3 acceleration

# 3D jerk in world frame [m/s^3]
geometry_msgs/Vector3 jerk

# 3D snap in world frame [m/s^4]
geometry_msgs/Vector3 snap

# yaw angle with respect to world frame [rad]
float64 yaw

# angular velocity in the body z-direction [rad/s]
float64 yaw_rate

# angular acceleration in the body z-direction [rad/s^2]
float64 yaw_acceleration

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
================================================================================
MSG: quad_msgs/QuadStateEstimate
# Quadrotor State Estimate 
# This Message is published by an estimator

Header header

#
int8 estimator_id

# 3D position in world frame [m]
geometry_msgs/Vector3 position

# 3D velocity in world frame [m/s]
geometry_msgs/Vector3 velocity

# Orientation with respect to world frame []
geometry_msgs/Quaternion orientation

# Body rates in body frame [rad/s]
geometry_msgs/Vector3 bodyrates

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :quad_msgs/ControllerFeedback "2d0f199907489e337c0d2dad1e3e9d0d")


