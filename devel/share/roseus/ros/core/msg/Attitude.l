;; Auto-generated. Do not edit!


(when (boundp 'core::Attitude)
  (if (not (find-package "CORE"))
    (make-package "CORE"))
  (shadow 'Attitude (find-package "CORE")))
(unless (find-package "CORE::ATTITUDE")
  (make-package "CORE::ATTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Attitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass core::Attitude
  :super ros::object
  :slots (_header _time_boot_ms _roll _pitch _yaw _rollspeed _pitchspeed _yawspeed ))

(defmethod core::Attitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_boot_ms __time_boot_ms) 0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:rollspeed __rollspeed) 0.0)
    ((:pitchspeed __pitchspeed) 0.0)
    ((:yawspeed __yawspeed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _rollspeed (float __rollspeed))
   (setq _pitchspeed (float __pitchspeed))
   (setq _yawspeed (float __yawspeed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_boot_ms
   (&optional __time_boot_ms)
   (if __time_boot_ms (setq _time_boot_ms __time_boot_ms)) _time_boot_ms)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:rollspeed
   (&optional __rollspeed)
   (if __rollspeed (setq _rollspeed __rollspeed)) _rollspeed)
  (:pitchspeed
   (&optional __pitchspeed)
   (if __pitchspeed (setq _pitchspeed __pitchspeed)) _pitchspeed)
  (:yawspeed
   (&optional __yawspeed)
   (if __yawspeed (setq _yawspeed __yawspeed)) _yawspeed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_boot_ms
    4
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _rollspeed
    8
    ;; float64 _pitchspeed
    8
    ;; float64 _yawspeed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_boot_ms
       (write-long _time_boot_ms s)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rollspeed
       (sys::poke _rollspeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitchspeed
       (sys::poke _pitchspeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yawspeed
       (sys::poke _yawspeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_boot_ms
     (setq _time_boot_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rollspeed
     (setq _rollspeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitchspeed
     (setq _pitchspeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yawspeed
     (setq _yawspeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get core::Attitude :md5sum-) "b9624dfb707d17cb5b1412fbdd4f2b55")
(setf (get core::Attitude :datatype-) "core/Attitude")
(setf (get core::Attitude :definition-)
      "Header header
uint32 time_boot_ms
float64 roll
float64 pitch
float64 yaw
float64 rollspeed
float64 pitchspeed
float64 yawspeed


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



(provide :core/Attitude "b9624dfb707d17cb5b1412fbdd4f2b55")


