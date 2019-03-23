;; Auto-generated. Do not edit!


(when (boundp 'ros_qr_tracker::Percept)
  (if (not (find-package "ROS_QR_TRACKER"))
    (make-package "ROS_QR_TRACKER"))
  (shadow 'Percept (find-package "ROS_QR_TRACKER")))
(unless (find-package "ROS_QR_TRACKER::PERCEPT")
  (make-package "ROS_QR_TRACKER::PERCEPT"))

(in-package "ROS")
;;//! \htmlinclude Percept.msg.html


(defclass ros_qr_tracker::Percept
  :super ros::object
  :slots (_frame _type _quality _a _b _c _d _width _height _distance _deflection_angle _data ))

(defmethod ros_qr_tracker::Percept
  (:init
   (&key
    ((:frame __frame) "")
    ((:type __type) "")
    ((:quality __quality) 0)
    ((:a __a) (make-array 2 :initial-element 0 :element-type :integer))
    ((:b __b) (make-array 2 :initial-element 0 :element-type :integer))
    ((:c __c) (make-array 2 :initial-element 0 :element-type :integer))
    ((:d __d) (make-array 2 :initial-element 0 :element-type :integer))
    ((:width __width) 0)
    ((:height __height) 0)
    ((:distance __distance) 0.0)
    ((:deflection_angle __deflection_angle) 0.0)
    ((:data __data) "")
    )
   (send-super :init)
   (setq _frame (string __frame))
   (setq _type (string __type))
   (setq _quality (round __quality))
   (setq _a __a)
   (setq _b __b)
   (setq _c __c)
   (setq _d __d)
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _distance (float __distance))
   (setq _deflection_angle (float __deflection_angle))
   (setq _data (string __data))
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:deflection_angle
   (&optional __deflection_angle)
   (if __deflection_angle (setq _deflection_angle __deflection_angle)) _deflection_angle)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _frame
    4 (length _frame)
    ;; string _type
    4 (length _type)
    ;; uint8 _quality
    1
    ;; int32[2] _a
    (* 4    2)
    ;; int32[2] _b
    (* 4    2)
    ;; int32[2] _c
    (* 4    2)
    ;; int32[2] _d
    (* 4    2)
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ;; float32 _distance
    4
    ;; float32 _deflection_angle
    4
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame
       (write-long (length _frame) s) (princ _frame s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint8 _quality
       (write-byte _quality s)
     ;; int32[2] _a
     (dotimes (i 2)
       (write-long (elt _a i) s)
       )
     ;; int32[2] _b
     (dotimes (i 2)
       (write-long (elt _b i) s)
       )
     ;; int32[2] _c
     (dotimes (i 2)
       (write-long (elt _c i) s)
       )
     ;; int32[2] _d
     (dotimes (i 2)
       (write-long (elt _d i) s)
       )
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deflection_angle
       (sys::poke _deflection_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32[2] _a
   (dotimes (i (length _a))
     (setf (elt _a i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32[2] _b
   (dotimes (i (length _b))
     (setf (elt _b i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32[2] _c
   (dotimes (i (length _c))
     (setf (elt _c i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32[2] _d
   (dotimes (i (length _d))
     (setf (elt _d i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deflection_angle
     (setq _deflection_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_qr_tracker::Percept :md5sum-) "aa84c85dfcfcdf5ccbb58bb1c1c5e57b")
(setf (get ros_qr_tracker::Percept :datatype-) "ros_qr_tracker/Percept")
(setf (get ros_qr_tracker::Percept :definition-)
      "
string frame
string type
uint8 quality
int32[2] a
int32[2] b
int32[2] c
int32[2] d
uint32   width
uint32   height
float32  distance
float32  deflection_angle
string data

")



(provide :ros_qr_tracker/Percept "aa84c85dfcfcdf5ccbb58bb1c1c5e57b")


