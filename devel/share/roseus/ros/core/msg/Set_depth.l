;; Auto-generated. Do not edit!


(when (boundp 'core::Set_depth)
  (if (not (find-package "CORE"))
    (make-package "CORE"))
  (shadow 'Set_depth (find-package "CORE")))
(unless (find-package "CORE::SET_DEPTH")
  (make-package "CORE::SET_DEPTH"))

(in-package "ROS")
;;//! \htmlinclude Set_depth.msg.html


(defclass core::Set_depth
  :super ros::object
  :slots (_enable_depth_ctrl _pwm_max _KI _KP _KD ))

(defmethod core::Set_depth
  (:init
   (&key
    ((:enable_depth_ctrl __enable_depth_ctrl) nil)
    ((:pwm_max __pwm_max) 0)
    ((:KI __KI) 0)
    ((:KP __KP) 0)
    ((:KD __KD) 0)
    )
   (send-super :init)
   (setq _enable_depth_ctrl __enable_depth_ctrl)
   (setq _pwm_max (round __pwm_max))
   (setq _KI (round __KI))
   (setq _KP (round __KP))
   (setq _KD (round __KD))
   self)
  (:enable_depth_ctrl
   (&optional (__enable_depth_ctrl :null))
   (if (not (eq __enable_depth_ctrl :null)) (setq _enable_depth_ctrl __enable_depth_ctrl)) _enable_depth_ctrl)
  (:pwm_max
   (&optional __pwm_max)
   (if __pwm_max (setq _pwm_max __pwm_max)) _pwm_max)
  (:KI
   (&optional __KI)
   (if __KI (setq _KI __KI)) _KI)
  (:KP
   (&optional __KP)
   (if __KP (setq _KP __KP)) _KP)
  (:KD
   (&optional __KD)
   (if __KD (setq _KD __KD)) _KD)
  (:serialization-length
   ()
   (+
    ;; bool _enable_depth_ctrl
    1
    ;; uint16 _pwm_max
    2
    ;; uint32 _KI
    4
    ;; uint32 _KP
    4
    ;; uint32 _KD
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_depth_ctrl
       (if _enable_depth_ctrl (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _pwm_max
       (write-word _pwm_max s)
     ;; uint32 _KI
       (write-long _KI s)
     ;; uint32 _KP
       (write-long _KP s)
     ;; uint32 _KD
       (write-long _KD s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_depth_ctrl
     (setq _enable_depth_ctrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _pwm_max
     (setq _pwm_max (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _KI
     (setq _KI (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _KP
     (setq _KP (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _KD
     (setq _KD (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get core::Set_depth :md5sum-) "6d0dbb958f15708be1e35ca6952146ef")
(setf (get core::Set_depth :datatype-) "core/Set_depth")
(setf (get core::Set_depth :definition-)
      "bool enable_depth_ctrl
uint16 pwm_max 
uint32 KI
uint32 KP
uint32 KD

")



(provide :core/Set_depth "6d0dbb958f15708be1e35ca6952146ef")


