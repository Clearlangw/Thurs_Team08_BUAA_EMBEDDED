; Auto-generated. Do not edit!


(cl:in-package Thus_g5-srv)


;//! \htmlinclude modify_waypoint-request.msg.html

(cl:defclass <modify_waypoint-request> (roslisp-msg-protocol:ros-message)
  ((op
    :reader op
    :initarg :op
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass modify_waypoint-request (<modify_waypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <modify_waypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'modify_waypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<modify_waypoint-request> is deprecated: use Thus_g5-srv:modify_waypoint-request instead.")))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <modify_waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:op-val is deprecated.  Use Thus_g5-srv:op instead.")
  (op m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <modify_waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:name-val is deprecated.  Use Thus_g5-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <modify_waypoint-request>) ostream)
  "Serializes a message object of type '<modify_waypoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <modify_waypoint-request>) istream)
  "Deserializes a message object of type '<modify_waypoint-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<modify_waypoint-request>)))
  "Returns string type for a service object of type '<modify_waypoint-request>"
  "Thus_g5/modify_waypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'modify_waypoint-request)))
  "Returns string type for a service object of type 'modify_waypoint-request"
  "Thus_g5/modify_waypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<modify_waypoint-request>)))
  "Returns md5sum for a message object of type '<modify_waypoint-request>"
  "478c393b4e4234c67c0fc79ff227ecab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'modify_waypoint-request)))
  "Returns md5sum for a message object of type 'modify_waypoint-request"
  "478c393b4e4234c67c0fc79ff227ecab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<modify_waypoint-request>)))
  "Returns full string definition for message of type '<modify_waypoint-request>"
  (cl:format cl:nil "uint8 op~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'modify_waypoint-request)))
  "Returns full string definition for message of type 'modify_waypoint-request"
  (cl:format cl:nil "uint8 op~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <modify_waypoint-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <modify_waypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'modify_waypoint-request
    (cl:cons ':op (op msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude modify_waypoint-response.msg.html

(cl:defclass <modify_waypoint-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (th
    :reader th
    :initarg :th
    :type cl:float
    :initform 0.0))
)

(cl:defclass modify_waypoint-response (<modify_waypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <modify_waypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'modify_waypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<modify_waypoint-response> is deprecated: use Thus_g5-srv:modify_waypoint-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <modify_waypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:flag-val is deprecated.  Use Thus_g5-srv:flag instead.")
  (flag m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <modify_waypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:x-val is deprecated.  Use Thus_g5-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <modify_waypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:y-val is deprecated.  Use Thus_g5-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'th-val :lambda-list '(m))
(cl:defmethod th-val ((m <modify_waypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:th-val is deprecated.  Use Thus_g5-srv:th instead.")
  (th m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <modify_waypoint-response>) ostream)
  "Serializes a message object of type '<modify_waypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'th))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <modify_waypoint-response>) istream)
  "Deserializes a message object of type '<modify_waypoint-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'th) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<modify_waypoint-response>)))
  "Returns string type for a service object of type '<modify_waypoint-response>"
  "Thus_g5/modify_waypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'modify_waypoint-response)))
  "Returns string type for a service object of type 'modify_waypoint-response"
  "Thus_g5/modify_waypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<modify_waypoint-response>)))
  "Returns md5sum for a message object of type '<modify_waypoint-response>"
  "478c393b4e4234c67c0fc79ff227ecab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'modify_waypoint-response)))
  "Returns md5sum for a message object of type 'modify_waypoint-response"
  "478c393b4e4234c67c0fc79ff227ecab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<modify_waypoint-response>)))
  "Returns full string definition for message of type '<modify_waypoint-response>"
  (cl:format cl:nil "uint8 flag~%float32 x~%float32 y~%float32 th~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'modify_waypoint-response)))
  "Returns full string definition for message of type 'modify_waypoint-response"
  (cl:format cl:nil "uint8 flag~%float32 x~%float32 y~%float32 th~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <modify_waypoint-response>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <modify_waypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'modify_waypoint-response
    (cl:cons ':flag (flag msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':th (th msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'modify_waypoint)))
  'modify_waypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'modify_waypoint)))
  'modify_waypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'modify_waypoint)))
  "Returns string type for a service object of type '<modify_waypoint>"
  "Thus_g5/modify_waypoint")