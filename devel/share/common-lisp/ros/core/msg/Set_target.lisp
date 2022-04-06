; Auto-generated. Do not edit!


(cl:in-package core-msg)


;//! \htmlinclude Set_target.msg.html

(cl:defclass <Set_target> (roslisp-msg-protocol:ros-message)
  ((depth_desired
    :reader depth_desired
    :initarg :depth_desired
    :type cl:float
    :initform 0.0)
   (heading_desired
    :reader heading_desired
    :initarg :heading_desired
    :type cl:float
    :initform 0.0)
   (velocity_desired
    :reader velocity_desired
    :initarg :velocity_desired
    :type cl:float
    :initform 0.0))
)

(cl:defclass Set_target (<Set_target>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Set_target>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Set_target)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name core-msg:<Set_target> is deprecated: use core-msg:Set_target instead.")))

(cl:ensure-generic-function 'depth_desired-val :lambda-list '(m))
(cl:defmethod depth_desired-val ((m <Set_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:depth_desired-val is deprecated.  Use core-msg:depth_desired instead.")
  (depth_desired m))

(cl:ensure-generic-function 'heading_desired-val :lambda-list '(m))
(cl:defmethod heading_desired-val ((m <Set_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:heading_desired-val is deprecated.  Use core-msg:heading_desired instead.")
  (heading_desired m))

(cl:ensure-generic-function 'velocity_desired-val :lambda-list '(m))
(cl:defmethod velocity_desired-val ((m <Set_target>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader core-msg:velocity_desired-val is deprecated.  Use core-msg:velocity_desired instead.")
  (velocity_desired m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Set_target>) ostream)
  "Serializes a message object of type '<Set_target>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'depth_desired))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_desired))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_desired))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Set_target>) istream)
  "Deserializes a message object of type '<Set_target>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth_desired) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_desired) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_desired) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Set_target>)))
  "Returns string type for a message object of type '<Set_target>"
  "core/Set_target")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Set_target)))
  "Returns string type for a message object of type 'Set_target"
  "core/Set_target")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Set_target>)))
  "Returns md5sum for a message object of type '<Set_target>"
  "faa6984abfc0273c6ee5cabc8606f8ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Set_target)))
  "Returns md5sum for a message object of type 'Set_target"
  "faa6984abfc0273c6ee5cabc8606f8ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Set_target>)))
  "Returns full string definition for message of type '<Set_target>"
  (cl:format cl:nil "float64 depth_desired~%float64 heading_desired~%float64 velocity_desired~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Set_target)))
  "Returns full string definition for message of type 'Set_target"
  (cl:format cl:nil "float64 depth_desired~%float64 heading_desired~%float64 velocity_desired~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Set_target>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Set_target>))
  "Converts a ROS message object to a list"
  (cl:list 'Set_target
    (cl:cons ':depth_desired (depth_desired msg))
    (cl:cons ':heading_desired (heading_desired msg))
    (cl:cons ':velocity_desired (velocity_desired msg))
))
