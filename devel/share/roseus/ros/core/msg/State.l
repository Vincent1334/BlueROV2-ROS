;; Auto-generated. Do not edit!


(when (boundp 'core::State)
  (if (not (find-package "CORE"))
    (make-package "CORE"))
  (shadow 'State (find-package "CORE")))
(unless (find-package "CORE::STATE")
  (make-package "CORE::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass core::State
  :super ros::object
  :slots (_arm _rc1 _rc2 _rc3 _rc4 _rc5 _rc6 _light _camera _mode ))

(defmethod core::State
  (:init
   (&key
    ((:arm __arm) nil)
    ((:rc1 __rc1) 0)
    ((:rc2 __rc2) 0)
    ((:rc3 __rc3) 0)
    ((:rc4 __rc4) 0)
    ((:rc5 __rc5) 0)
    ((:rc6 __rc6) 0)
    ((:light __light) 0.0)
    ((:camera __camera) 0.0)
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _arm __arm)
   (setq _rc1 (round __rc1))
   (setq _rc2 (round __rc2))
   (setq _rc3 (round __rc3))
   (setq _rc4 (round __rc4))
   (setq _rc5 (round __rc5))
   (setq _rc6 (round __rc6))
   (setq _light (float __light))
   (setq _camera (float __camera))
   (setq _mode (string __mode))
   self)
  (:arm
   (&optional (__arm :null))
   (if (not (eq __arm :null)) (setq _arm __arm)) _arm)
  (:rc1
   (&optional __rc1)
   (if __rc1 (setq _rc1 __rc1)) _rc1)
  (:rc2
   (&optional __rc2)
   (if __rc2 (setq _rc2 __rc2)) _rc2)
  (:rc3
   (&optional __rc3)
   (if __rc3 (setq _rc3 __rc3)) _rc3)
  (:rc4
   (&optional __rc4)
   (if __rc4 (setq _rc4 __rc4)) _rc4)
  (:rc5
   (&optional __rc5)
   (if __rc5 (setq _rc5 __rc5)) _rc5)
  (:rc6
   (&optional __rc6)
   (if __rc6 (setq _rc6 __rc6)) _rc6)
  (:light
   (&optional __light)
   (if __light (setq _light __light)) _light)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; bool _arm
    1
    ;; int16 _rc1
    2
    ;; int16 _rc2
    2
    ;; int16 _rc3
    2
    ;; int16 _rc4
    2
    ;; int16 _rc5
    2
    ;; int16 _rc6
    2
    ;; float64 _light
    8
    ;; float64 _camera
    8
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _arm
       (if _arm (write-byte -1 s) (write-byte 0 s))
     ;; int16 _rc1
       (write-word _rc1 s)
     ;; int16 _rc2
       (write-word _rc2 s)
     ;; int16 _rc3
       (write-word _rc3 s)
     ;; int16 _rc4
       (write-word _rc4 s)
     ;; int16 _rc5
       (write-word _rc5 s)
     ;; int16 _rc6
       (write-word _rc6 s)
     ;; float64 _light
       (sys::poke _light (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _camera
       (sys::poke _camera (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _arm
     (setq _arm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _rc1
     (setq _rc1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rc2
     (setq _rc2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rc3
     (setq _rc3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rc4
     (setq _rc4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rc5
     (setq _rc5 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rc6
     (setq _rc6 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _light
     (setq _light (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _camera
     (setq _camera (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get core::State :md5sum-) "0d689844bfa2e5cd74a8f2a60b1a7770")
(setf (get core::State :datatype-) "core/State")
(setf (get core::State :definition-)
      "bool arm
int16 rc1
int16 rc2
int16 rc3
int16 rc4
int16 rc5
int16 rc6
float64 light
float64 camera
string mode


")



(provide :core/State "0d689844bfa2e5cd74a8f2a60b1a7770")


