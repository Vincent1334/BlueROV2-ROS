;; Auto-generated. Do not edit!


(when (boundp 'core::Set_heading)
  (if (not (find-package "CORE"))
    (make-package "CORE"))
  (shadow 'Set_heading (find-package "CORE")))
(unless (find-package "CORE::SET_HEADING")
  (make-package "CORE::SET_HEADING"))

(in-package "ROS")
;;//! \htmlinclude Set_heading.msg.html


(defclass core::Set_heading
  :super ros::object
  :slots (_enable_heading_ctrl _pwm_max _KP _KD ))

(defmethod core::Set_heading
  (:init
   (&key
    ((:enable_heading_ctrl __enable_heading_ctrl) nil)
    ((:pwm_max __pwm_max) 0)
    ((:KP __KP) 0)
    ((:KD __KD) 0)
    )
   (send-super :init)
   (setq _enable_heading_ctrl __enable_heading_ctrl)
   (setq _pwm_max (round __pwm_max))
   (setq _KP (round __KP))
   (setq _KD (round __KD))
   self)
  (:enable_heading_ctrl
   (&optional (__enable_heading_ctrl :null))
   (if (not (eq __enable_heading_ctrl :null)) (setq _enable_heading_ctrl __enable_heading_ctrl)) _enable_heading_ctrl)
  (:pwm_max
   (&optional __pwm_max)
   (if __pwm_max (setq _pwm_max __pwm_max)) _pwm_max)
  (:KP
   (&optional __KP)
   (if __KP (setq _KP __KP)) _KP)
  (:KD
   (&optional __KD)
   (if __KD (setq _KD __KD)) _KD)
  (:serialization-length
   ()
   (+
    ;; bool _enable_heading_ctrl
    1
    ;; uint16 _pwm_max
    2
    ;; uint32 _KP
    4
    ;; uint32 _KD
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_heading_ctrl
       (if _enable_heading_ctrl (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _pwm_max
       (write-word _pwm_max s)
     ;; uint32 _KP
       (write-long _KP s)
     ;; uint32 _KD
       (write-long _KD s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_heading_ctrl
     (setq _enable_heading_ctrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _pwm_max
     (setq _pwm_max (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _KP
     (setq _KP (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _KD
     (setq _KD (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get core::Set_heading :md5sum-) "aaf66dbe4b6106fdd485cfbb25c08b2a")
(setf (get core::Set_heading :datatype-) "core/Set_heading")
(setf (get core::Set_heading :definition-)
      "bool enable_heading_ctrl
uint16 pwm_max
uint32 KP
uint32 KD

")



(provide :core/Set_heading "aaf66dbe4b6106fdd485cfbb25c08b2a")


