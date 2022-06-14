;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::Px4Timesync)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'Px4Timesync (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::PX4TIMESYNC")
  (make-package "QUAD_MSGS::PX4TIMESYNC"))

(in-package "ROS")
;;//! \htmlinclude Px4Timesync.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass quad_msgs::Px4Timesync
  :super ros::object
  :slots (_header _sync_id _time_px4 ))

(defmethod quad_msgs::Px4Timesync
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sync_id __sync_id) 0)
    ((:time_px4 __time_px4) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sync_id (round __sync_id))
   (setq _time_px4 (round __time_px4))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sync_id
   (&optional __sync_id)
   (if __sync_id (setq _sync_id __sync_id)) _sync_id)
  (:time_px4
   (&optional __time_px4)
   (if __time_px4 (setq _time_px4 __time_px4)) _time_px4)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _sync_id
    8
    ;; uint64 _time_px4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _sync_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sync_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sync_id) (= (length (_sync_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sync_id . bv) 0) 0) s)
              (write-long (ash (elt (_sync_id . bv) 1) -1) s))
             ((and (class _sync_id) (= (length (_sync_id . bv)) 1)) ;; big1
              (write-long (elt (_sync_id . bv) 0) s)
              (write-long (if (>= _sync_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sync_id s)(write-long (if (>= _sync_id 0) 0 #xffffffff) s)))
     ;; uint64 _time_px4
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_px4 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_px4) (= (length (_time_px4 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_px4 . bv) 0) 0) s)
              (write-long (ash (elt (_time_px4 . bv) 1) -1) s))
             ((and (class _time_px4) (= (length (_time_px4 . bv)) 1)) ;; big1
              (write-long (elt (_time_px4 . bv) 0) s)
              (write-long (if (>= _time_px4 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_px4 s)(write-long (if (>= _time_px4 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _sync_id
#+(or :alpha :irix6 :x86_64)
      (setf _sync_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sync_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _time_px4
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_px4 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_px4 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get quad_msgs::Px4Timesync :md5sum-) "327517baa37dbcc4373715d2a46cae2b")
(setf (get quad_msgs::Px4Timesync :datatype-) "quad_msgs/Px4Timesync")
(setf (get quad_msgs::Px4Timesync :definition-)
      "# Quadrotor State Estimate 
# This Message is published by an estimator

Header header

# Sync id: not used yet
int64 sync_id

# PX4fmu timestamp
uint64 time_px4


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



(provide :quad_msgs/Px4Timesync "327517baa37dbcc4373715d2a46cae2b")


