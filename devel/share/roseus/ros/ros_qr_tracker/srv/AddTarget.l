;; Auto-generated. Do not edit!


(when (boundp 'ros_qr_tracker::AddTarget)
  (if (not (find-package "ROS_QR_TRACKER"))
    (make-package "ROS_QR_TRACKER"))
  (shadow 'AddTarget (find-package "ROS_QR_TRACKER")))
(unless (find-package "ROS_QR_TRACKER::ADDTARGET")
  (make-package "ROS_QR_TRACKER::ADDTARGET"))
(unless (find-package "ROS_QR_TRACKER::ADDTARGETREQUEST")
  (make-package "ROS_QR_TRACKER::ADDTARGETREQUEST"))
(unless (find-package "ROS_QR_TRACKER::ADDTARGETRESPONSE")
  (make-package "ROS_QR_TRACKER::ADDTARGETRESPONSE"))

(in-package "ROS")





(defclass ros_qr_tracker::AddTargetRequest
  :super ros::object
  :slots (_data ))

(defmethod ros_qr_tracker::AddTargetRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_qr_tracker::AddTargetResponse
  :super ros::object
  :slots ())

(defmethod ros_qr_tracker::AddTargetResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_qr_tracker::AddTarget
  :super ros::object
  :slots ())

(setf (get ros_qr_tracker::AddTarget :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get ros_qr_tracker::AddTarget :datatype-) "ros_qr_tracker/AddTarget")
(setf (get ros_qr_tracker::AddTarget :request) ros_qr_tracker::AddTargetRequest)
(setf (get ros_qr_tracker::AddTarget :response) ros_qr_tracker::AddTargetResponse)

(defmethod ros_qr_tracker::AddTargetRequest
  (:response () (instance ros_qr_tracker::AddTargetResponse :init)))

(setf (get ros_qr_tracker::AddTargetRequest :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get ros_qr_tracker::AddTargetRequest :datatype-) "ros_qr_tracker/AddTargetRequest")
(setf (get ros_qr_tracker::AddTargetRequest :definition-)
      "string data
---

")

(setf (get ros_qr_tracker::AddTargetResponse :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get ros_qr_tracker::AddTargetResponse :datatype-) "ros_qr_tracker/AddTargetResponse")
(setf (get ros_qr_tracker::AddTargetResponse :definition-)
      "string data
---

")



(provide :ros_qr_tracker/AddTarget "992ce8a1687cec8c8bd883ec73ca41d1")


