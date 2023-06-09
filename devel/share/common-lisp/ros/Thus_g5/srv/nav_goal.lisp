; Auto-generated. Do not edit!


(cl:in-package Thus_g5-srv)


;//! \htmlinclude nav_goal-request.msg.html

(cl:defclass <nav_goal-request> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type cl:string
    :initform ""))
)

(cl:defclass nav_goal-request (<nav_goal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_goal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_goal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<nav_goal-request> is deprecated: use Thus_g5-srv:nav_goal-request instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <nav_goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:goal-val is deprecated.  Use Thus_g5-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_goal-request>) ostream)
  "Serializes a message object of type '<nav_goal-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'goal))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_goal-request>) istream)
  "Deserializes a message object of type '<nav_goal-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_goal-request>)))
  "Returns string type for a service object of type '<nav_goal-request>"
  "Thus_g5/nav_goalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_goal-request)))
  "Returns string type for a service object of type 'nav_goal-request"
  "Thus_g5/nav_goalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_goal-request>)))
  "Returns md5sum for a message object of type '<nav_goal-request>"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_goal-request)))
  "Returns md5sum for a message object of type 'nav_goal-request"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_goal-request>)))
  "Returns full string definition for message of type '<nav_goal-request>"
  (cl:format cl:nil "string goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_goal-request)))
  "Returns full string definition for message of type 'nav_goal-request"
  (cl:format cl:nil "string goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_goal-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_goal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_goal-request
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude nav_goal-response.msg.html

(cl:defclass <nav_goal-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass nav_goal-response (<nav_goal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nav_goal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nav_goal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<nav_goal-response> is deprecated: use Thus_g5-srv:nav_goal-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <nav_goal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:flag-val is deprecated.  Use Thus_g5-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nav_goal-response>) ostream)
  "Serializes a message object of type '<nav_goal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nav_goal-response>) istream)
  "Deserializes a message object of type '<nav_goal-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nav_goal-response>)))
  "Returns string type for a service object of type '<nav_goal-response>"
  "Thus_g5/nav_goalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_goal-response)))
  "Returns string type for a service object of type 'nav_goal-response"
  "Thus_g5/nav_goalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nav_goal-response>)))
  "Returns md5sum for a message object of type '<nav_goal-response>"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nav_goal-response)))
  "Returns md5sum for a message object of type 'nav_goal-response"
  "85eb5661a8af1bbedc0539d77068c54e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nav_goal-response>)))
  "Returns full string definition for message of type '<nav_goal-response>"
  (cl:format cl:nil "uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nav_goal-response)))
  "Returns full string definition for message of type 'nav_goal-response"
  (cl:format cl:nil "uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nav_goal-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nav_goal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'nav_goal-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'nav_goal)))
  'nav_goal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'nav_goal)))
  'nav_goal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nav_goal)))
  "Returns string type for a service object of type '<nav_goal>"
  "Thus_g5/nav_goal")