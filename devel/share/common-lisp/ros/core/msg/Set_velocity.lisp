; Auto-generated. Do not edit!


(cl:in-package core-msg)


;//! \htmlinclude Set_velocity.msg.html

(cl:defclass <Set_velocity> (roslisp-msg-protocol:ros-message)
  ((enable_velocity_ctrl
    :reader enable_velocity_ctrl
    :initarg :enable_velocity_ctrl
    :type cl:boolean
    :initform cl:nil)
   (pwm_max
    :reader pwm_max
    :initarg :pwm_max
    :type cl:fixnum
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

(cl:defclass Set_velocity (<Set_velocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Set_velocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Set_velocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core-msg:<Set_velocity> is deprecated: use core-msg:Set_velocity instead.")))

(cl:ensure-generic-function 'enable_velocity_ctrl-val :lambda-list '(m))
(cl:defmethod enable_velocity_ctrl-val ((m <Set_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:enable_velocity_ctrl-val is deprecated.  Use core-msg:enable_velocity_ctrl instead.")
  (enable_velocity_ctrl m))

(cl:ensure-generic-function 'pwm_max-val :lambda-list '(m))
(cl:defmethod pwm_max-val ((m <Set_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:pwm_max-val is deprecated.  Use core-msg:pwm_max instead.")
  (pwm_max m))

(cl:ensure-generic-function 'KP-val :lambda-list '(m))
(cl:defmethod KP-val ((m <Set_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:KP-val is deprecated.  Use core-msg:KP instead.")
  (KP m))

(cl:ensure-generic-function 'KD-val :lambda-list '(m))
(cl:defmethod KD-val ((m <Set_velocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:KD-val is deprecated.  Use core-msg:KD instead.")
  (KD m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Set_velocity>) ostream)
  "Serializes a message object of type '<Set_velocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_velocity_ctrl) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_max)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KP)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'KD)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'KD)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Set_velocity>) istream)
  "Deserializes a message object of type '<Set_velocity>"
    (cl:setf (cl:slot-value msg 'enable_velocity_ctrl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_max)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_max)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Set_velocity>)))
  "Returns string type for a message object of type '<Set_velocity>"
  "core/Set_velocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Set_velocity)))
  "Returns string type for a message object of type 'Set_velocity"
  "core/Set_velocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Set_velocity>)))
  "Returns md5sum for a message object of type '<Set_velocity>"
  "c4803dc7cecc9ba43456f9905c6d9e6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Set_velocity)))
  "Returns md5sum for a message object of type 'Set_velocity"
  "c4803dc7cecc9ba43456f9905c6d9e6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Set_velocity>)))
  "Returns full string definition for message of type '<Set_velocity>"
  (cl:format cl:nil "bool enable_velocity_ctrl~%uint16 pwm_max ~%uint32 KP~%uint32 KD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Set_velocity)))
  "Returns full string definition for message of type 'Set_velocity"
  (cl:format cl:nil "bool enable_velocity_ctrl~%uint16 pwm_max ~%uint32 KP~%uint32 KD~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Set_velocity>))
  (cl:+ 0
     1
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Set_velocity>))
  "Converts a ROS message object to a list"
  (cl:list 'Set_velocity
    (cl:cons ':enable_velocity_ctrl (enable_velocity_ctrl msg))
    (cl:cons ':pwm_max (pwm_max msg))
    (cl:cons ':KP (KP msg))
    (cl:cons ':KD (KD msg))
))
