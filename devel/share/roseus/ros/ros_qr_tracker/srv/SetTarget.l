;; Auto-generated. Do not edit!


(when (boundp 'ros_qr_tracker::SetTarget)
  (if (not (find-package "ROS_QR_TRACKER"))
    (make-package "ROS_QR_TRACKER"))
  (shadow 'SetTarget (find-package "ROS_QR_TRACKER")))
(unless (find-package "ROS_QR_TRACKER::SETTARGET")
  (make-package "ROS_QR_TRACKER::SETTARGET"))
(unless (find-package "ROS_QR_TRACKER::SETTARGETREQUEST")
  (make-package "ROS_QR_TRACKER::SETTARGETREQUEST"))
(unless (find-package "ROS_QR_TRACKER::SETTARGETRESPONSE")
  (make-package "ROS_QR_TRACKER::SETTARGETRESPONSE"))

(in-package "ROS")





(defclass ros_qr_tracker::SetTargetRequest
  :super ros::object
  :slots (_data ))

(defmethod ros_qr_tracker::SetTargetRequest
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

(defclass ros_qr_tracker::SetTargetResponse
  :super ros::object
  :slots ())

(defmethod ros_qr_tracker::SetTargetResponse
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

(defclass ros_qr_tracker::SetTarget
  :super ros::object
  :slots ())

(setf (get ros_qr_tracker::SetTarget :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get ros_qr_tracker::SetTarget :datatype-) "ros_qr_tracker/SetTarget")
(setf (get ros_qr_tracker::SetTarget :request) ros_qr_tracker::SetTargetRequest)
(setf (get ros_qr_tracker::SetTarget :response) ros_qr_tracker::SetTargetResponse)

(defmethod ros_qr_tracker::SetTargetRequest
  (:response () (instance ros_qr_tracker::SetTargetResponse :init)))

(setf (get ros_qr_tracker::SetTargetRequest :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get ros_qr_tracker::SetTargetRequest :datatype-) "ros_qr_tracker/SetTargetRequest")
(setf (get ros_qr_tracker::SetTargetRequest :definition-)
      "string data
---

")

(setf (get ros_qr_tracker::SetTargetResponse :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get ros_qr_tracker::SetTargetResponse :datatype-) "ros_qr_tracker/SetTargetResponse")
(setf (get ros_qr_tracker::SetTargetResponse :definition-)
      "string data
---

")



(provide :ros_qr_tracker/SetTarget "992ce8a1687cec8c8bd883ec73ca41d1")


