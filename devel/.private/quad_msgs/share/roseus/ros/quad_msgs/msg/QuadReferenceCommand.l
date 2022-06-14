;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::QuadReferenceCommand)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'QuadReferenceCommand (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::QUADREFERENCECOMMAND")
  (make-package "QUAD_MSGS::QUADREFERENCECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude QuadReferenceCommand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::QuadReferenceCommand
  :super ros::object
  :slots (_header _estimator_id _position _velocity _acceleration ))

(defmethod quad_msgs::QuadReferenceCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:estimator_id __estimator_id) 0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _estimator_id (round __estimator_id))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
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
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
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
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
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
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
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
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;;
   self)
  )

(setf (get quad_msgs::QuadReferenceCommand :md5sum-) "2274d8738fcb1166ada5fd1b8bc73cc2")
(setf (get quad_msgs::QuadReferenceCommand :datatype-) "quad_msgs/QuadReferenceCommand")
(setf (get quad_msgs::QuadReferenceCommand :definition-)
      "# Quadrotor outerloop reference
# This Message is published by a controller

Header header

#
int8 estimator_id

# 3D position in world frame [m]
geometry_msgs/Vector3 position

# 3D velocity in world frame [m/s]
geometry_msgs/Vector3 velocity

# Acc command
geometry_msgs/Vector3 acceleration


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



(provide :quad_msgs/QuadReferenceCommand "2274d8738fcb1166ada5fd1b8bc73cc2")


