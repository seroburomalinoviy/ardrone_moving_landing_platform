
(cl:in-package :asdf)

(defsystem "ros_qr_tracker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Percept" :depends-on ("_package_Percept"))
    (:file "_package_Percept" :depends-on ("_package"))
  ))