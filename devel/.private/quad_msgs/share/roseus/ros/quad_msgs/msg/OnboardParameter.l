;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::OnboardParameter)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'OnboardParameter (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::ONBOARDPARAMETER")
  (make-package "QUAD_MSGS::ONBOARDPARAMETER"))

(in-package "ROS")
;;//! \htmlinclude OnboardParameter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::OnboardParameter
  :super ros::object
  :slots (_header _param_id _param_value _param_type _param_count _param_index ))

(defmethod quad_msgs::OnboardParameter
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:param_id __param_id) "")
    ((:param_value __param_value) 0.0)
    ((:param_type __param_type) 0)
    ((:param_count __param_count) 0)
    ((:param_index __param_index) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _param_id (string __param_id))
   (setq _param_value (float __param_value))
   (setq _param_type (round __param_type))
   (setq _param_count (round __param_count))
   (setq _param_index (round __param_index))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:param_id
   (&optional __param_id)
   (if __param_id (setq _param_id __param_id)) _param_id)
  (:param_value
   (&optional __param_value)
   (if __param_value (setq _param_value __param_value)) _param_value)
  (:param_type
   (&optional __param_type)
   (if __param_type (setq _param_type __param_type)) _param_type)
  (:param_count
   (&optional __param_count)
   (if __param_count (setq _param_count __param_count)) _param_count)
  (:param_index
   (&optional __param_index)
   (if __param_index (setq _param_index __param_index)) _param_index)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _param_id
    4 (length _param_id)
    ;; float64 _param_value
    8
    ;; uint8 _param_type
    1
    ;; uint16 _param_count
    2
    ;; uint16 _param_index
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _param_id
       (write-long (length _param_id) s) (princ _param_id s)
     ;; float64 _param_value
       (sys::poke _param_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _param_type
       (write-byte _param_type s)
     ;; uint16 _param_count
       (write-word _param_count s)
     ;; uint16 _param_index
       (write-word _param_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _param_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _param_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _param_value
     (setq _param_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _param_type
     (setq _param_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _param_count
     (setq _param_count (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _param_index
     (setq _param_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get quad_msgs::OnboardParameter :md5sum-) "848b3224649dee188bd859cc1a9c4bbb")
(setf (get quad_msgs::OnboardParameter :datatype-) "quad_msgs/OnboardParameter")
(setf (get quad_msgs::OnboardParameter :definition-)
      "#Message type handling onboard parameters of the PX4

Header header

#Onboard parameter id (char[16])
string param_id

#Value of the parameter
float64 param_value

#Onboard parameter type according to the mavlink message: MAV_PARAM_TYPE
uint8 param_type

#Total number of onboard parameters
uint16 param_count

#Index of this onboard parameter
uint16 param_index

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



(provide :quad_msgs/OnboardParameter "848b3224649dee188bd859cc1a9c4bbb")


