; Auto-generated. Do not edit!


(cl:in-package Thus_g5-srv)


;//! \htmlinclude waypoint-request.msg.html

(cl:defclass <waypoint-request> (roslisp-msg-protocol:ros-message)
  ((op
    :reader op
    :initarg :op
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pos_x
    :reader pos_x
    :initarg :pos_x
    :type cl:float
    :initform 0.0)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:float
    :initform 0.0)
   (ori_z
    :reader ori_z
    :initarg :ori_z
    :type cl:float
    :initform 0.0)
   (ori_w
    :reader ori_w
    :initarg :ori_w
    :type cl:float
    :initform 0.0))
)

(cl:defclass waypoint-request (<waypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<waypoint-request> is deprecated: use Thus_g5-srv:waypoint-request instead.")))

(cl:ensure-generic-function 'op-val :lambda-list '(m))
(cl:defmethod op-val ((m <waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:op-val is deprecated.  Use Thus_g5-srv:op instead.")
  (op m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:name-val is deprecated.  Use Thus_g5-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:pos_x-val is deprecated.  Use Thus_g5-srv:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:pos_y-val is deprecated.  Use Thus_g5-srv:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'ori_z-val :lambda-list '(m))
(cl:defmethod ori_z-val ((m <waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:ori_z-val is deprecated.  Use Thus_g5-srv:ori_z instead.")
  (ori_z m))

(cl:ensure-generic-function 'ori_w-val :lambda-list '(m))
(cl:defmethod ori_w-val ((m <waypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:ori_w-val is deprecated.  Use Thus_g5-srv:ori_w instead.")
  (ori_w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waypoint-request>) ostream)
  "Serializes a message object of type '<waypoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ori_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ori_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waypoint-request>) istream)
  "Deserializes a message object of type '<waypoint-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'op)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ori_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ori_w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waypoint-request>)))
  "Returns string type for a service object of type '<waypoint-request>"
  "Thus_g5/waypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoint-request)))
  "Returns string type for a service object of type 'waypoint-request"
  "Thus_g5/waypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waypoint-request>)))
  "Returns md5sum for a message object of type '<waypoint-request>"
  "bed5daee1b4718b12320576a56e38ad1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waypoint-request)))
  "Returns md5sum for a message object of type 'waypoint-request"
  "bed5daee1b4718b12320576a56e38ad1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waypoint-request>)))
  "Returns full string definition for message of type '<waypoint-request>"
  (cl:format cl:nil "uint8 op~%string name~%float32 pos_x~%float32 pos_y~%float32 ori_z~%float32 ori_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waypoint-request)))
  "Returns full string definition for message of type 'waypoint-request"
  (cl:format cl:nil "uint8 op~%string name~%float32 pos_x~%float32 pos_y~%float32 ori_z~%float32 ori_w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waypoint-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'waypoint-request
    (cl:cons ':op (op msg))
    (cl:cons ':name (name msg))
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':ori_z (ori_z msg))
    (cl:cons ':ori_w (ori_w msg))
))
;//! \htmlinclude waypoint-response.msg.html

(cl:defclass <waypoint-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass waypoint-response (<waypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<waypoint-response> is deprecated: use Thus_g5-srv:waypoint-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <waypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:flag-val is deprecated.  Use Thus_g5-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waypoint-response>) ostream)
  "Serializes a message object of type '<waypoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waypoint-response>) istream)
  "Deserializes a message object of type '<waypoint-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waypoint-response>)))
  "Returns string type for a service object of type '<waypoint-response>"
  "Thus_g5/waypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoint-response)))
  "Returns string type for a service object of type 'waypoint-response"
  "Thus_g5/waypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waypoint-response>)))
  "Returns md5sum for a message object of type '<waypoint-response>"
  "bed5daee1b4718b12320576a56e38ad1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waypoint-response)))
  "Returns md5sum for a message object of type 'waypoint-response"
  "bed5daee1b4718b12320576a56e38ad1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waypoint-response>)))
  "Returns full string definition for message of type '<waypoint-response>"
  (cl:format cl:nil "uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waypoint-response)))
  "Returns full string definition for message of type 'waypoint-response"
  (cl:format cl:nil "uint8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waypoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'waypoint-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'waypoint)))
  'waypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'waypoint)))
  'waypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoint)))
  "Returns string type for a service object of type '<waypoint>"
  "Thus_g5/waypoint")