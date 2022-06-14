;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::QuadStateEstimate)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'QuadStateEstimate (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::QUADSTATEESTIMATE")
  (make-package "QUAD_MSGS::QUADSTATEESTIMATE"))

(in-package "ROS")
;;//! \htmlinclude QuadStateEstimate.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::QuadStateEstimate
  :super ros::object
  :slots (_header _estimator_id _position _velocity _orientation _bodyrates ))

(defmethod quad_msgs::QuadStateEstimate
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:estimator_id __estimator_id) 0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:bodyrates __bodyrates) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _estimator_id (round __estimator_id))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _orientation __orientation)
   (setq _bodyrates __bodyrates)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:estimator_id
   (&optional __estimator_id)
   (if __estimator_id (setq _estimator_id __estimator_id)) _estimator_id)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _estimator_id
    1
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _bodyrates
    (send _bodyrates :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _estimator_id
       (write-byte _estimator_id s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _bodyrates
       (send _bodyrates :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _estimator_id
     (setq _estimator_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _estimator_id 127) (setq _estimator_id (- _estimator_id 256)))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _bodyrates
     (send _bodyrates :deserialize buf ptr-) (incf ptr- (send _bodyrates :serialization-length))
   ;;
   self)
  )

(setf (get quad_msgs::QuadStateEstimate :md5sum-) "10e1136b2da43c5b126470661510cf3e")
(setf (get quad_msgs::QuadStateEstimate :datatype-) "quad_msgs/QuadStateEstimate")
(setf (get quad_msgs::QuadStateEstimate :definition-)
      "# Quadrotor State Estimate 
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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :quad_msgs/QuadStateEstimate "10e1136b2da43c5b126470661510cf3e")


