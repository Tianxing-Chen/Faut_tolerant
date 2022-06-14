;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::QuadDesiredState)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'QuadDesiredState (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::QUADDESIREDSTATE")
  (make-package "QUAD_MSGS::QUADDESIREDSTATE"))

(in-package "ROS")
;;//! \htmlinclude QuadDesiredState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::QuadDesiredState
  :super ros::object
  :slots (_header _position _velocity _acceleration _jerk _snap _yaw _yaw_rate _yaw_acceleration ))

(defmethod quad_msgs::QuadDesiredState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:jerk __jerk) (instance geometry_msgs::Vector3 :init))
    ((:snap __snap) (instance geometry_msgs::Vector3 :init))
    ((:yaw __yaw) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:yaw_acceleration __yaw_acceleration) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _jerk __jerk)
   (setq _snap __snap)
   (setq _yaw (float __yaw))
   (setq _yaw_rate (float __yaw_rate))
   (setq _yaw_acceleration (float __yaw_acceleration))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:snap
   (&rest __snap)
   (if (keywordp (car __snap))
       (send* _snap __snap)
     (progn
       (if __snap (setq _snap (car __snap)))
       _snap)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:yaw_acceleration
   (&optional __yaw_acceleration)
   (if __yaw_acceleration (setq _yaw_acceleration __yaw_acceleration)) _yaw_acceleration)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _jerk
    (send _jerk :serialization-length)
    ;; geometry_msgs/Vector3 _snap
    (send _snap :serialization-length)
    ;; float64 _yaw
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _yaw_acceleration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _jerk
       (send _jerk :serialize s)
     ;; geometry_msgs/Vector3 _snap
       (send _snap :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_acceleration
       (sys::poke _yaw_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; geometry_msgs/Vector3 _snap
     (send _snap :deserialize buf ptr-) (incf ptr- (send _snap :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_acceleration
     (setq _yaw_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quad_msgs::QuadDesiredState :md5sum-) "065ef74908cfffbd6261497df2dd0d01")
(setf (get quad_msgs::QuadDesiredState :datatype-) "quad_msgs/QuadDesiredState")
(setf (get quad_msgs::QuadDesiredState :definition-)
      "# Quadrotor Desired State 

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



(provide :quad_msgs/QuadDesiredState "065ef74908cfffbd6261497df2dd0d01")


