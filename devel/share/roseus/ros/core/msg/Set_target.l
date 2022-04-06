;; Auto-generated. Do not edit!


(when (boundp 'core::Set_target)
  (if (not (find-package "CORE"))
    (make-package "CORE"))
  (shadow 'Set_target (find-package "CORE")))
(unless (find-package "CORE::SET_TARGET")
  (make-package "CORE::SET_TARGET"))

(in-package "ROS")
;;//! \htmlinclude Set_target.msg.html


(defclass core::Set_target
  :super ros::object
  :slots (_depth_desired _heading_desired _velocity_desired ))

(defmethod core::Set_target
  (:init
   (&key
    ((:depth_desired __depth_desired) 0.0)
    ((:heading_desired __heading_desired) 0.0)
    ((:velocity_desired __velocity_desired) 0.0)
    )
   (send-super :init)
   (setq _depth_desired (float __depth_desired))
   (setq _heading_desired (float __heading_desired))
   (setq _velocity_desired (float __velocity_desired))
   self)
  (:depth_desired
   (&optional __depth_desired)
   (if __depth_desired (setq _depth_desired __depth_desired)) _depth_desired)
  (:heading_desired
   (&optional __heading_desired)
   (if __heading_desired (setq _heading_desired __heading_desired)) _heading_desired)
  (:velocity_desired
   (&optional __velocity_desired)
   (if __velocity_desired (setq _velocity_desired __velocity_desired)) _velocity_desired)
  (:serialization-length
   ()
   (+
    ;; float64 _depth_desired
    8
    ;; float64 _heading_desired
    8
    ;; float64 _velocity_desired
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _depth_desired
       (sys::poke _depth_desired (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_desired
       (sys::poke _heading_desired (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_desired
       (sys::poke _velocity_desired (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _depth_desired
     (setq _depth_desired (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_desired
     (setq _heading_desired (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_desired
     (setq _velocity_desired (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get core::Set_target :md5sum-) "faa6984abfc0273c6ee5cabc8606f8ef")
(setf (get core::Set_target :datatype-) "core/Set_target")
(setf (get core::Set_target :definition-)
      "float64 depth_desired
float64 heading_desired
float64 velocity_desired

")



(provide :core/Set_target "faa6984abfc0273c6ee5cabc8606f8ef")


