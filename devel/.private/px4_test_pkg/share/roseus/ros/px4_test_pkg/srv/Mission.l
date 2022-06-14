;; Auto-generated. Do not edit!


(when (boundp 'px4_test_pkg::Mission)
  (if (not (find-package "PX4_TEST_PKG"))
    (make-package "PX4_TEST_PKG"))
  (shadow 'Mission (find-package "PX4_TEST_PKG")))
(unless (find-package "PX4_TEST_PKG::MISSION")
  (make-package "PX4_TEST_PKG::MISSION"))
(unless (find-package "PX4_TEST_PKG::MISSIONREQUEST")
  (make-package "PX4_TEST_PKG::MISSIONREQUEST"))
(unless (find-package "PX4_TEST_PKG::MISSIONRESPONSE")
  (make-package "PX4_TEST_PKG::MISSIONRESPONSE"))

(in-package "ROS")





(intern "*TAKEOFF*" (find-package "PX4_TEST_PKG::MISSIONREQUEST"))
(shadow '*TAKEOFF* (find-package "PX4_TEST_PKG::MISSIONREQUEST"))
(defconstant px4_test_pkg::MissionRequest::*TAKEOFF* 1)
(intern "*MOAE*" (find-package "PX4_TEST_PKG::MISSIONREQUEST"))
(shadow '*MOAE* (find-package "PX4_TEST_PKG::MISSIONREQUEST"))
(defconstant px4_test_pkg::MissionRequest::*MOAE* 2)
(intern "*LAND*" (find-package "PX4_TEST_PKG::MISSIONREQUEST"))
(shadow '*LAND* (find-package "PX4_TEST_PKG::MISSIONREQUEST"))
(defconstant px4_test_pkg::MissionRequest::*LAND* 3)
(defclass px4_test_pkg::MissionRequest
  :super ros::object
  :slots (_mission _x _y ))

(defmethod px4_test_pkg::MissionRequest
  (:init
   (&key
    ((:mission __mission) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _mission (round __mission))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:mission
   (&optional __mission)
   (if __mission (setq _mission __mission)) _mission)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int8 _mission
    1
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mission
       (write-byte _mission s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mission
     (setq _mission (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mission 127) (setq _mission (- _mission 256)))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass px4_test_pkg::MissionResponse
  :super ros::object
  :slots (_success _message ))

(defmethod px4_test_pkg::MissionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass px4_test_pkg::Mission
  :super ros::object
  :slots ())

(setf (get px4_test_pkg::Mission :md5sum-) "5a500ca8314e489419937af52c2e5ce0")
(setf (get px4_test_pkg::Mission :datatype-) "px4_test_pkg/Mission")
(setf (get px4_test_pkg::Mission :request) px4_test_pkg::MissionRequest)
(setf (get px4_test_pkg::Mission :response) px4_test_pkg::MissionResponse)

(defmethod px4_test_pkg::MissionRequest
  (:response () (instance px4_test_pkg::MissionResponse :init)))

(setf (get px4_test_pkg::MissionRequest :md5sum-) "5a500ca8314e489419937af52c2e5ce0")
(setf (get px4_test_pkg::MissionRequest :datatype-) "px4_test_pkg/MissionRequest")
(setf (get px4_test_pkg::MissionRequest :definition-)
      "int8 TAKEOFF = 1
int8 MOAE = 2
int8 LAND = 3

int8 mission
float64 x
float64 y
---
bool success
string message
")

(setf (get px4_test_pkg::MissionResponse :md5sum-) "5a500ca8314e489419937af52c2e5ce0")
(setf (get px4_test_pkg::MissionResponse :datatype-) "px4_test_pkg/MissionResponse")
(setf (get px4_test_pkg::MissionResponse :definition-)
      "int8 TAKEOFF = 1
int8 MOAE = 2
int8 LAND = 3

int8 mission
float64 x
float64 y
---
bool success
string message
")



(provide :px4_test_pkg/Mission "5a500ca8314e489419937af52c2e5ce0")


