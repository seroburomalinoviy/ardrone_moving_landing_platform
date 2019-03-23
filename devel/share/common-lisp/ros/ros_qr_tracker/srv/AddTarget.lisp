; Auto-generated. Do not edit!


(cl:in-package ros_qr_tracker-srv)


;//! \htmlinclude AddTarget-request.msg.html

(cl:defclass <AddTarget-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass AddTarget-request (<AddTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_qr_tracker-srv:<AddTarget-request> is deprecated: use ros_qr_tracker-srv:AddTarget-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <AddTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_qr_tracker-srv:data-val is deprecated.  Use ros_qr_tracker-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTarget-request>) ostream)
  "Serializes a message object of type '<AddTarget-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTarget-request>) istream)
  "Deserializes a message object of type '<AddTarget-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTarget-request>)))
  "Returns string type for a service object of type '<AddTarget-request>"
  "ros_qr_tracker/AddTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTarget-request)))
  "Returns string type for a service object of type 'AddTarget-request"
  "ros_qr_tracker/AddTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTarget-request>)))
  "Returns md5sum for a message object of type '<AddTarget-request>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTarget-request)))
  "Returns md5sum for a message object of type 'AddTarget-request"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTarget-request>)))
  "Returns full string definition for message of type '<AddTarget-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTarget-request)))
  "Returns full string definition for message of type 'AddTarget-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTarget-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTarget-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude AddTarget-response.msg.html

(cl:defclass <AddTarget-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AddTarget-response (<AddTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_qr_tracker-srv:<AddTarget-response> is deprecated: use ros_qr_tracker-srv:AddTarget-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTarget-response>) ostream)
  "Serializes a message object of type '<AddTarget-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTarget-response>) istream)
  "Deserializes a message object of type '<AddTarget-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTarget-response>)))
  "Returns string type for a service object of type '<AddTarget-response>"
  "ros_qr_tracker/AddTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTarget-response)))
  "Returns string type for a service object of type 'AddTarget-response"
  "ros_qr_tracker/AddTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTarget-response>)))
  "Returns md5sum for a message object of type '<AddTarget-response>"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTarget-response)))
  "Returns md5sum for a message object of type 'AddTarget-response"
  "992ce8a1687cec8c8bd883ec73ca41d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTarget-response>)))
  "Returns full string definition for message of type '<AddTarget-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTarget-response)))
  "Returns full string definition for message of type 'AddTarget-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTarget-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTarget-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTarget)))
  'AddTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTarget)))
  'AddTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTarget)))
  "Returns string type for a service object of type '<AddTarget>"
  "ros_qr_tracker/AddTarget")