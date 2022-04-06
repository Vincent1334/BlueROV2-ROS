;; Auto-generated. Do not edit!


(when (boundp 'core::Bar30)
  (if (not (find-package "CORE"))
    (make-package "CORE"))
  (shadow 'Bar30 (find-package "CORE")))
(unless (find-package "CORE::BAR30")
  (make-package "CORE::BAR30"))

(in-package "ROS")
;;//! \htmlinclude Bar30.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass core::Bar30
  :super ros::object
  :slots (_header _time_boot_ms _press_abs _press_diff _temperature ))

(defmethod core::Bar30
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_boot_ms __time_boot_ms) 0)
    ((:press_abs __press_abs) 0.0)
    ((:press_diff __press_diff) 0.0)
    ((:temperature __temperature) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _press_abs (float __press_abs))
   (setq _press_diff (float __press_diff))
   (setq _temperature (round __temperature))
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
  (:press_abs
   (&optional __press_abs)
   (if __press_abs (setq _press_abs __press_abs)) _press_abs)
  (:press_diff
   (&optional __press_diff)
   (if __press_diff (setq _press_diff __press_diff)) _press_diff)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _time_boot_ms
    4
    ;; float64 _press_abs
    8
    ;; float64 _press_diff
    8
    ;; int16 _temperature
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _time_boot_ms
       (write-long _time_boot_ms s)
     ;; float64 _press_abs
       (sys::poke _press_abs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _press_diff
       (sys::poke _press_diff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _temperature
       (write-word _temperature s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _time_boot_ms
     (setq _time_boot_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _press_abs
     (setq _press_abs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _press_diff
     (setq _press_diff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _temperature
     (setq _temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get core::Bar30 :md5sum-) "29194ec7e51ce871e713f252e60d31fb")
(setf (get core::Bar30 :datatype-) "core/Bar30")
(setf (get core::Bar30 :definition-)
      "Header header
uint32 time_boot_ms
float64 press_abs
float64 press_diff
int16 temperature

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



(provide :core/Bar30 "29194ec7e51ce871e713f252e60d31fb")


