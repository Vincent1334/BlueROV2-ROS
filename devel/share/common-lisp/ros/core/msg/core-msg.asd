
(cl:in-package :asdf)

(defsystem "core-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Attitude" :depends-on ("_package_Attitude"))
    (:file "_package_Attitude" :depends-on ("_package"))
    (:file "Bar30" :depends-on ("_package_Bar30"))
    (:file "_package_Bar30" :depends-on ("_package"))
    (:file "Set_depth" :depends-on ("_package_Set_depth"))
    (:file "_package_Set_depth" :depends-on ("_package"))
    (:file "Set_heading" :depends-on ("_package_Set_heading"))
    (:file "_package_Set_heading" :depends-on ("_package"))
    (:file "Set_target" :depends-on ("_package_Set_target"))
    (:file "_package_Set_target" :depends-on ("_package"))
    (:file "Set_velocity" :depends-on ("_package_Set_velocity"))
    (:file "_package_Set_velocity" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))