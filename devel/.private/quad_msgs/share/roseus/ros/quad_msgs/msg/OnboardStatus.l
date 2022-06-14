;; Auto-generated. Do not edit!


(when (boundp 'quad_msgs::OnboardStatus)
  (if (not (find-package "QUAD_MSGS"))
    (make-package "QUAD_MSGS"))
  (shadow 'OnboardStatus (find-package "QUAD_MSGS")))
(unless (find-package "QUAD_MSGS::ONBOARDSTATUS")
  (make-package "QUAD_MSGS::ONBOARDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OnboardStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LANDED*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*LANDED* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*LANDED* 0)
(intern "*AUTONOMOUS_FLYING*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*AUTONOMOUS_FLYING* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*AUTONOMOUS_FLYING* 1)
(intern "*MANUAL_FLYING*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*MANUAL_FLYING* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*MANUAL_FLYING* 2)
(intern "*EMERGENCY_LANDING*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*EMERGENCY_LANDING* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*EMERGENCY_LANDING* 3)
(intern "*INVALID*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*INVALID* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*INVALID* 0)
(intern "*GOOD*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*GOOD* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*GOOD* 1)
(intern "*LOW*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*LOW* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*LOW* 2)
(intern "*CRITICAL*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*CRITICAL* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*CRITICAL* 3)
(intern "*RATE_MODE*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*RATE_MODE* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*RATE_MODE* 0)
(intern "*ATTITUDE_MODE*" (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(shadow '*ATTITUDE_MODE* (find-package "QUAD_MSGS::ONBOARDSTATUS"))
(defconstant quad_msgs::OnboardStatus::*ATTITUDE_MODE* 1)
(defclass quad_msgs::OnboardStatus
  :super ros::object
  :slots (_header _commander_state _battery_state _control_mode _battery_voltage _pcb_temperature ))

(defmethod quad_msgs::OnboardStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:commander_state __commander_state) 0)
    ((:battery_state __battery_state) 0)
    ((:control_mode __control_mode) 0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:pcb_temperature __pcb_temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _commander_state (round __commander_state))
   (setq _battery_state (round __battery_state))
   (setq _control_mode (round __control_mode))
   (setq _battery_voltage (float __battery_voltage))
   (setq _pcb_temperature (float __pcb_temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:commander_state
   (&optional __commander_state)
   (if __commander_state (setq _commander_state __commander_state)) _commander_state)
  (:battery_state
   (&optional __battery_state)
   (if __battery_state (setq _battery_state __battery_state)) _battery_state)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:pcb_temperature
   (&optional __pcb_temperature)
   (if __pcb_temperature (setq _pcb_temperature __pcb_temperature)) _pcb_temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _commander_state
    1
    ;; uint8 _battery_state
    1
    ;; uint8 _control_mode
    1
    ;; float64 _battery_voltage
    8
    ;; float32 _pcb_temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _commander_state
       (write-byte _commander_state s)
     ;; uint8 _battery_state
       (write-byte _battery_state s)
     ;; uint8 _control_mode
       (write-byte _control_mode s)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _pcb_temperature
       (sys::poke _pcb_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _commander_state
     (setq _commander_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _battery_state
     (setq _battery_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _control_mode
     (setq _control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _pcb_temperature
     (setq _pcb_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get quad_msgs::OnboardStatus :md5sum-) "ab2e46231b964a6f29dabac1bc0f4937")
(setf (get quad_msgs::OnboardStatus :datatype-) "quad_msgs/OnboardStatus")
(setf (get quad_msgs::OnboardStatus :definition-)
      "# Status message from the PX4

# commander state enums
uint8 LANDED=0
uint8 AUTONOMOUS_FLYING=1
uint8 MANUAL_FLYING=2
uint8 EMERGENCY_LANDING=3

# battery state enums
uint8 INVALID=0
uint8 GOOD=1
uint8 LOW=2
uint8 CRITICAL=3

        
# control mode enums
uint8 RATE_MODE=0
uint8 ATTITUDE_MODE=1

Header header

uint8 commander_state
uint8 battery_state
uint8 control_mode
float64 battery_voltage
float32 pcb_temperature

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



(provide :quad_msgs/OnboardStatus "ab2e46231b964a6f29dabac1bc0f4937")


