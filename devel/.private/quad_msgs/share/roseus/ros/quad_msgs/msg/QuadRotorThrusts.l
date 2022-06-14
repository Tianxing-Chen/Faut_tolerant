;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::QuadRotorThrusts)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'QuadRotorThrusts (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::QUADROTORTHRUSTS")
  (make-package "QUAD_MSGS::QUADROTORTHRUSTS"))

(in-package "ROS")
;;//! \htmlinclude QuadRotorThrusts.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::QuadRotorThrusts
  :super ros::object
  :slots (_header _thrust_1 _thrust_2 _thrust_3 _thrust_4 ))

(defmethod quad_msgs::QuadRotorThrusts
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:thrust_1 __thrust_1) 0.0)
    ((:thrust_2 __thrust_2) 0.0)
    ((:thrust_3 __thrust_3) 0.0)
    ((:thrust_4 __thrust_4) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _thrust_1 (float __thrust_1))
   (setq _thrust_2 (float __thrust_2))
   (setq _thrust_3 (float __thrust_3))
   (setq _thrust_4 (float __thrust_4))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:thrust_1
   (&optional __thrust_1)
   (if __thrust_1 (setq _thrust_1 __thrust_1)) _thrust_1)
  (:thrust_2
   (&optional __thrust_2)
   (if __thrust_2 (setq _thrust_2 __thrust_2)) _thrust_2)
  (:thrust_3
   (&optional __thrust_3)
   (if __thrust_3 (setq _thrust_3 __thrust_3)) _thrust_3)
  (:thrust_4
   (&optional __thrust_4)
   (if __thrust_4 (setq _thrust_4 __thrust_4)) _thrust_4)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _thrust_1
    8
    ;; float64 _thrust_2
    8
    ;; float64 _thrust_3
    8
    ;; float64 _thrust_4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _thrust_1
       (sys::poke _thrust_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_2
       (sys::poke _thrust_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_3
       (sys::poke _thrust_3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _thrust_4
       (sys::poke _thrust_4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _thrust_1
     (setq _thrust_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_2
     (setq _thrust_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_3
     (setq _thrust_3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _thrust_4
     (setq _thrust_4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get quad_msgs::QuadRotorThrusts :md5sum-) "971e125a0994b8a82a3a4740294147b2")
(setf (get quad_msgs::QuadRotorThrusts :datatype-) "quad_msgs/QuadRotorThrusts")
(setf (get quad_msgs::QuadRotorThrusts :definition-)
      "# Single rotor thrusts of a quadrotor
# This message is received from onboard (the actually applied rotor thrusts)

Header header

# Single rotor thrusts [N]
float64 thrust_1
float64 thrust_2
float64 thrust_3
float64 thrust_4
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



(provide :quad_msgs/QuadRotorThrusts "971e125a0994b8a82a3a4740294147b2")


