; Auto-generated. Do not edit!


(cl:in-package Thus_g5-srv)


;//! \htmlinclude grab_object-request.msg.html

(cl:defclass <grab_object-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type cl:string
    :initform ""))
)

(cl:defclass grab_object-request (<grab_object-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grab_object-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grab_object-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<grab_object-request> is deprecated: use Thus_g5-srv:grab_object-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <grab_object-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:goal-val is deprecated.  Use Thus_g5-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grab_object-request>) ostream)
  "Serializes a message object of type '<grab_object-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grab_object-request>) istream)
  "Deserializes a message object of type '<grab_object-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'goal) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grab_object-request>)))
  "Returns string type for a service object of type '<grab_object-request>"
  "Thus_g5/grab_objectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grab_object-request)))
  "Returns string type for a service object of type 'grab_object-request"
  "Thus_g5/grab_objectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grab_object-request>)))
  "Returns md5sum for a message object of type '<grab_object-request>"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grab_object-request)))
  "Returns md5sum for a message object of type 'grab_object-request"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grab_object-request>)))
  "Returns full string definition for message of type '<grab_object-request>"
  (cl:format cl:nil "string goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grab_object-request)))
  "Returns full string definition for message of type 'grab_object-request"
  (cl:format cl:nil "string goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grab_object-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grab_object-request>))
  "Converts a ROS message object to a list"
  (cl:list 'grab_object-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude grab_object-response.msg.html

(cl:defclass <grab_object-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass grab_object-response (<grab_object-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <grab_object-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'grab_object-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<grab_object-response> is deprecated: use Thus_g5-srv:grab_object-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <grab_object-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:flag-val is deprecated.  Use Thus_g5-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <grab_object-response>) ostream)
  "Serializes a message object of type '<grab_object-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <grab_object-response>) istream)
  "Deserializes a message object of type '<grab_object-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<grab_object-response>)))
  "Returns string type for a service object of type '<grab_object-response>"
  "Thus_g5/grab_objectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grab_object-response)))
  "Returns string type for a service object of type 'grab_object-response"
  "Thus_g5/grab_objectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<grab_object-response>)))
  "Returns md5sum for a message object of type '<grab_object-response>"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'grab_object-response)))
  "Returns md5sum for a message object of type 'grab_object-response"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<grab_object-response>)))
  "Returns full string definition for message of type '<grab_object-response>"
  (cl:format cl:nil "uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'grab_object-response)))
  "Returns full string definition for message of type 'grab_object-response"
  (cl:format cl:nil "uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <grab_object-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <grab_object-response>))
  "Converts a ROS message object to a list"
  (cl:list 'grab_object-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'grab_object)))
  'grab_object-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'grab_object)))
  'grab_object-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'grab_object)))
  "Returns string type for a service object of type '<grab_object>"
  "Thus_g5/grab_object")