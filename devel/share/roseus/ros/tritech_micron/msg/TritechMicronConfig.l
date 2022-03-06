;; Auto-generated. Do not edit!


(when (boundp 'tritech_micron::TritechMicronConfig)
  (if (not (find-package "TRITECH_MICRON"))
    (make-package "TRITECH_MICRON"))
  (shadow 'TritechMicronConfig (find-package "TRITECH_MICRON")))
(unless (find-package "TRITECH_MICRON::TRITECHMICRONCONFIG")
  (make-package "TRITECH_MICRON::TRITECHMICRONCONFIG"))

(in-package "ROS")
;;//! \htmlinclude TritechMicronConfig.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tritech_micron::TritechMicronConfig
  :super ros::object
  :slots (_header _inverted _continuous _scanright _adc8on _gain _ad_low _ad_high _left_limit _right_limit _range _nbins _step ))

(defmethod tritech_micron::TritechMicronConfig
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:inverted __inverted) nil)
    ((:continuous __continuous) nil)
    ((:scanright __scanright) nil)
    ((:adc8on __adc8on) nil)
    ((:gain __gain) 0.0)
    ((:ad_low __ad_low) 0.0)
    ((:ad_high __ad_high) 0.0)
    ((:left_limit __left_limit) 0.0)
    ((:right_limit __right_limit) 0.0)
    ((:range __range) 0.0)
    ((:nbins __nbins) 0)
    ((:step __step) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _inverted __inverted)
   (setq _continuous __continuous)
   (setq _scanright __scanright)
   (setq _adc8on __adc8on)
   (setq _gain (float __gain))
   (setq _ad_low (float __ad_low))
   (setq _ad_high (float __ad_high))
   (setq _left_limit (float __left_limit))
   (setq _right_limit (float __right_limit))
   (setq _range (float __range))
   (setq _nbins (round __nbins))
   (setq _step (float __step))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:inverted
   (&optional __inverted)
   (if __inverted (setq _inverted __inverted)) _inverted)
  (:continuous
   (&optional __continuous)
   (if __continuous (setq _continuous __continuous)) _continuous)
  (:scanright
   (&optional __scanright)
   (if __scanright (setq _scanright __scanright)) _scanright)
  (:adc8on
   (&optional __adc8on)
   (if __adc8on (setq _adc8on __adc8on)) _adc8on)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:ad_low
   (&optional __ad_low)
   (if __ad_low (setq _ad_low __ad_low)) _ad_low)
  (:ad_high
   (&optional __ad_high)
   (if __ad_high (setq _ad_high __ad_high)) _ad_high)
  (:left_limit
   (&optional __left_limit)
   (if __left_limit (setq _left_limit __left_limit)) _left_limit)
  (:right_limit
   (&optional __right_limit)
   (if __right_limit (setq _right_limit __right_limit)) _right_limit)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:nbins
   (&optional __nbins)
   (if __nbins (setq _nbins __nbins)) _nbins)
  (:step
   (&optional __step)
   (if __step (setq _step __step)) _step)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _inverted
    1
    ;; bool _continuous
    1
    ;; bool _scanright
    1
    ;; bool _adc8on
    1
    ;; float64 _gain
    8
    ;; float64 _ad_low
    8
    ;; float64 _ad_high
    8
    ;; float64 _left_limit
    8
    ;; float64 _right_limit
    8
    ;; float64 _range
    8
    ;; int16 _nbins
    2
    ;; float64 _step
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _inverted
       (if _inverted (write-byte -1 s) (write-byte 0 s))
     ;; bool _continuous
       (if _continuous (write-byte -1 s) (write-byte 0 s))
     ;; bool _scanright
       (if _scanright (write-byte -1 s) (write-byte 0 s))
     ;; bool _adc8on
       (if _adc8on (write-byte -1 s) (write-byte 0 s))
     ;; float64 _gain
       (sys::poke _gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ad_low
       (sys::poke _ad_low (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ad_high
       (sys::poke _ad_high (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_limit
       (sys::poke _left_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_limit
       (sys::poke _right_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _range
       (sys::poke _range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _nbins
       (write-word _nbins s)
     ;; float64 _step
       (sys::poke _step (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _inverted
     (setq _inverted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _continuous
     (setq _continuous (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _scanright
     (setq _scanright (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _adc8on
     (setq _adc8on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _gain
     (setq _gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ad_low
     (setq _ad_low (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ad_high
     (setq _ad_high (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_limit
     (setq _left_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_limit
     (setq _right_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _range
     (setq _range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _nbins
     (setq _nbins (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _step
     (setq _step (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tritech_micron::TritechMicronConfig :md5sum-) "2ca5e1f487382f5a303a19fc2149e230")
(setf (get tritech_micron::TritechMicronConfig :datatype-) "tritech_micron/TritechMicronConfig")
(setf (get tritech_micron::TritechMicronConfig :definition-)
      "# Tritech Micron configuration parameters.

# Header message.
Header header

# Whether the sonar head is facing upwards.
bool inverted

# Whether the scan is continuous or in sector scan mode.
bool continuous

# Whether the scan is clockwise.
bool scanright

# Whether the scan intensity is an 8-bit or 4-bit number.
bool adc8on

# Initial gain of the sonar pulse. Ranges between 0 and 1.
float64 gain

# Mapping of intensity to dB. Ranges from 0 to 80 dB.
float64 ad_low
float64 ad_high

# Right and left limit of scan if in sector scan mode. Values are in radians
# and range from 0 to 2 pi.
float64 left_limit
float64 right_limit

# Range of scan in meters.
float64 range

# Number of bins per scan slice.
int16 nbins

# Motor step size in radians.
float64 step

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :tritech_micron/TritechMicronConfig "2ca5e1f487382f5a303a19fc2149e230")


