; Auto-generated. Do not edit!


(cl:in-package core-msg)


;//! \htmlinclude Set_depth.msg.html

(cl:defclass <Set_depth> (roslisp-msg-protocol:ros-message)
  ((enable_depth_ctrl
    :reader enable_depth_ctrl
    :initarg :enable_depth_ctrl
    :type cl:boolean
    :initform cl:nil)
   (pwm_max
    :reader pwm_max
    :initarg :pwm_max
    :type cl:fixnum
    :initform 0)
   (KI
    :reader KI
    :initarg :KI
    :type cl:integer
    :initform 0)
   (KP
    :reader KP
    :initarg :KP
    :type cl:integer
    :initform 0)
   (KD
    :reader KD
    :initarg :KD
    :type cl:integer
    :initform 0))
)

(cl:defclass Set_depth (<Set_depth>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Set_depth>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Set_depth)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core-msg:<Set_depth> is deprecated: use core-msg:Set_depth instead.")))

(cl:ensure-generic-function 'enable_depth_ctrl-val :lambda-list '(m))
(cl:defmethod enable_depth_ctrl-val ((m <Set_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:enable_depth_ctrl-val is deprecated.  Use core-msg:enable_depth_ctrl instead.")
  (enable_depth_ctrl m))

(cl:ensure-generic-function 'pwm_max-val :lambda-list '(m))
(cl:defmethod pwm_max-val ((m <Set_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:pwm_max-val is deprecated.  Use core-msg:pwm_max instead.")
  (pwm_max m))

(cl:ensure-generic-function 'KI-val :lambda-list '(m))
(cl:defmethod KI-val ((m <Set_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:KI-val is deprecated.  Use core-msg:KI instead.")
  (KI m))

(cl:ensure-generic-function 'KP-val :lambda-list '(m))
(cl:defmethod KP-val ((m <Set_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:KP-val is deprecated.  Use core-msg:KP instead.")
  (KP m))

(cl:ensure-generic-function 'KD-val :lambda-list '(m))
(cl:defmethod KD-val ((m <Set_depth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:KD-val is deprecated.  Use core-msg:KD instead.")
  (KD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Set_depth>) ostream)
  "Serializes a message object of type '<Set_depth>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_depth_ctrl) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KI)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KI)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KI)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KI)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KD)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Set_depth>) istream)
  "Deserializes a message object of type '<Set_depth>"
    (cl:setf (cl:slot-value msg 'enable_depth_ctrl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KI)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KI)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KI)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KI)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KP)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KD)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KD)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KD)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KD)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Set_depth>)))
  "Returns string type for a message object of type '<Set_depth>"
  "core/Set_depth")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Set_depth)))
  "Returns string type for a message object of type 'Set_depth"
  "core/Set_depth")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Set_depth>)))
  "Returns md5sum for a message object of type '<Set_depth>"
  "6d0dbb958f15708be1e35ca6952146ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Set_depth)))
  "Returns md5sum for a message object of type 'Set_depth"
  "6d0dbb958f15708be1e35ca6952146ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Set_depth>)))
  "Returns full string definition for message of type '<Set_depth>"
  (cl:format cl:nil "bool enable_depth_ctrl~%uint16 pwm_max ~%uint32 KI~%uint32 KP~%uint32 KD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Set_depth)))
  "Returns full string definition for message of type 'Set_depth"
  (cl:format cl:nil "bool enable_depth_ctrl~%uint16 pwm_max ~%uint32 KI~%uint32 KP~%uint32 KD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Set_depth>))
  (cl:+ 0
     1
     2
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Set_depth>))
  "Converts a ROS message object to a list"
  (cl:list 'Set_depth
    (cl:cons ':enable_depth_ctrl (enable_depth_ctrl msg))
    (cl:cons ':pwm_max (pwm_max msg))
    (cl:cons ':KI (KI msg))
    (cl:cons ':KP (KP msg))
    (cl:cons ':KD (KD msg))
))
