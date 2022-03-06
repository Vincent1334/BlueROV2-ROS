
(cl:in-package :asdf)

(defsystem "tritech_micron-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TritechMicronConfig" :depends-on ("_package_TritechMicronConfig"))
    (:file "_package_TritechMicronConfig" :depends-on ("_package"))
  ))