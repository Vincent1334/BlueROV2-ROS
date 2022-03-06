; Auto-generated. Do not edit!


(cl:in-package tritech_micron-msg)


;//! \htmlinclude TritechMicronConfig.msg.html

(cl:defclass <TritechMicronConfig> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (inverted
    :reader inverted
    :initarg :inverted
    :type cl:boolean
    :initform cl:nil)
   (continuous
    :reader continuous
    :initarg :continuous
    :type cl:boolean
    :initform cl:nil)
   (scanright
    :reader scanright
    :initarg :scanright
    :type cl:boolean
    :initform cl:nil)
   (adc8on
    :reader adc8on
    :initarg :adc8on
    :type cl:boolean
    :initform cl:nil)
   (gain
    :reader gain
    :initarg :gain
    :type cl:float
    :initform 0.0)
   (ad_low
    :reader ad_low
    :initarg :ad_low
    :type cl:float
    :initform 0.0)
   (ad_high
    :reader ad_high
    :initarg :ad_high
    :type cl:float
    :initform 0.0)
   (left_limit
    :reader left_limit
    :initarg :left_limit
    :type cl:float
    :initform 0.0)
   (right_limit
    :reader right_limit
    :initarg :right_limit
    :type cl:float
    :initform 0.0)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (nbins
    :reader nbins
    :initarg :nbins
    :type cl:fixnum
    :initform 0)
   (step
    :reader step
    :initarg :step
    :type cl:float
    :initform 0.0))
)

(cl:defclass TritechMicronConfig (<TritechMicronConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TritechMicronConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TritechMicronConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tritech_micron-msg:<TritechMicronConfig> is deprecated: use tritech_micron-msg:TritechMicronConfig instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:header-val is deprecated.  Use tritech_micron-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'inverted-val :lambda-list '(m))
(cl:defmethod inverted-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:inverted-val is deprecated.  Use tritech_micron-msg:inverted instead.")
  (inverted m))

(cl:ensure-generic-function 'continuous-val :lambda-list '(m))
(cl:defmethod continuous-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:continuous-val is deprecated.  Use tritech_micron-msg:continuous instead.")
  (continuous m))

(cl:ensure-generic-function 'scanright-val :lambda-list '(m))
(cl:defmethod scanright-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:scanright-val is deprecated.  Use tritech_micron-msg:scanright instead.")
  (scanright m))

(cl:ensure-generic-function 'adc8on-val :lambda-list '(m))
(cl:defmethod adc8on-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:adc8on-val is deprecated.  Use tritech_micron-msg:adc8on instead.")
  (adc8on m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:gain-val is deprecated.  Use tritech_micron-msg:gain instead.")
  (gain m))

(cl:ensure-generic-function 'ad_low-val :lambda-list '(m))
(cl:defmethod ad_low-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:ad_low-val is deprecated.  Use tritech_micron-msg:ad_low instead.")
  (ad_low m))

(cl:ensure-generic-function 'ad_high-val :lambda-list '(m))
(cl:defmethod ad_high-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:ad_high-val is deprecated.  Use tritech_micron-msg:ad_high instead.")
  (ad_high m))

(cl:ensure-generic-function 'left_limit-val :lambda-list '(m))
(cl:defmethod left_limit-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:left_limit-val is deprecated.  Use tritech_micron-msg:left_limit instead.")
  (left_limit m))

(cl:ensure-generic-function 'right_limit-val :lambda-list '(m))
(cl:defmethod right_limit-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:right_limit-val is deprecated.  Use tritech_micron-msg:right_limit instead.")
  (right_limit m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:range-val is deprecated.  Use tritech_micron-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'nbins-val :lambda-list '(m))
(cl:defmethod nbins-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:nbins-val is deprecated.  Use tritech_micron-msg:nbins instead.")
  (nbins m))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <TritechMicronConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tritech_micron-msg:step-val is deprecated.  Use tritech_micron-msg:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TritechMicronConfig>) ostream)
  "Serializes a message object of type '<TritechMicronConfig>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inverted) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'continuous) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'scanright) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'adc8on) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ad_low))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ad_high))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'nbins)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TritechMicronConfig>) istream)
  "Deserializes a message object of type '<TritechMicronConfig>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'inverted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'continuous) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'scanright) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'adc8on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gain) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ad_low) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ad_high) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nbins) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TritechMicronConfig>)))
  "Returns string type for a message object of type '<TritechMicronConfig>"
  "tritech_micron/TritechMicronConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TritechMicronConfig)))
  "Returns string type for a message object of type 'TritechMicronConfig"
  "tritech_micron/TritechMicronConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TritechMicronConfig>)))
  "Returns md5sum for a message object of type '<TritechMicronConfig>"
  "2ca5e1f487382f5a303a19fc2149e230")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TritechMicronConfig)))
  "Returns md5sum for a message object of type 'TritechMicronConfig"
  "2ca5e1f487382f5a303a19fc2149e230")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TritechMicronConfig>)))
  "Returns full string definition for message of type '<TritechMicronConfig>"
  (cl:format cl:nil "# Tritech Micron configuration parameters.~%~%# Header message.~%Header header~%~%# Whether the sonar head is facing upwards.~%bool inverted~%~%# Whether the scan is continuous or in sector scan mode.~%bool continuous~%~%# Whether the scan is clockwise.~%bool scanright~%~%# Whether the scan intensity is an 8-bit or 4-bit number.~%bool adc8on~%~%# Initial gain of the sonar pulse. Ranges between 0 and 1.~%float64 gain~%~%# Mapping of intensity to dB. Ranges from 0 to 80 dB.~%float64 ad_low~%float64 ad_high~%~%# Right and left limit of scan if in sector scan mode. Values are in radians~%# and range from 0 to 2 pi.~%float64 left_limit~%float64 right_limit~%~%# Range of scan in meters.~%float64 range~%~%# Number of bins per scan slice.~%int16 nbins~%~%# Motor step size in radians.~%float64 step~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TritechMicronConfig)))
  "Returns full string definition for message of type 'TritechMicronConfig"
  (cl:format cl:nil "# Tritech Micron configuration parameters.~%~%# Header message.~%Header header~%~%# Whether the sonar head is facing upwards.~%bool inverted~%~%# Whether the scan is continuous or in sector scan mode.~%bool continuous~%~%# Whether the scan is clockwise.~%bool scanright~%~%# Whether the scan intensity is an 8-bit or 4-bit number.~%bool adc8on~%~%# Initial gain of the sonar pulse. Ranges between 0 and 1.~%float64 gain~%~%# Mapping of intensity to dB. Ranges from 0 to 80 dB.~%float64 ad_low~%float64 ad_high~%~%# Right and left limit of scan if in sector scan mode. Values are in radians~%# and range from 0 to 2 pi.~%float64 left_limit~%float64 right_limit~%~%# Range of scan in meters.~%float64 range~%~%# Number of bins per scan slice.~%int16 nbins~%~%# Motor step size in radians.~%float64 step~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TritechMicronConfig>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     8
     8
     8
     8
     8
     8
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TritechMicronConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'TritechMicronConfig
    (cl:cons ':header (header msg))
    (cl:cons ':inverted (inverted msg))
    (cl:cons ':continuous (continuous msg))
    (cl:cons ':scanright (scanright msg))
    (cl:cons ':adc8on (adc8on msg))
    (cl:cons ':gain (gain msg))
    (cl:cons ':ad_low (ad_low msg))
    (cl:cons ':ad_high (ad_high msg))
    (cl:cons ':left_limit (left_limit msg))
    (cl:cons ':right_limit (right_limit msg))
    (cl:cons ':range (range msg))
    (cl:cons ':nbins (nbins msg))
    (cl:cons ':step (step msg))
))
