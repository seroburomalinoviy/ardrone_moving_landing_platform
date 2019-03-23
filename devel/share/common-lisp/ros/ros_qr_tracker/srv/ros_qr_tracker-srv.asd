
(cl:in-package :asdf)

(defsystem "ros_qr_tracker-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTarget" :depends-on ("_package_AddTarget"))
    (:file "_package_AddTarget" :depends-on ("_package"))
    (:file "SetTarget" :depends-on ("_package_SetTarget"))
    (:file "_package_SetTarget" :depends-on ("_package"))
  ))