; Auto-generated. Do not edit!


(cl:in-package Thus_g5-srv)


;//! \htmlinclude vel_ctrl-request.msg.html

(cl:defclass <vel_ctrl-request> (roslisp-msg-protocol:ros-message)
  ((dx
    :reader dx
    :initarg :dx
    :type cl:fixnum
    :initform 0)
   (dy
    :reader dy
    :initarg :dy
    :type cl:fixnum
    :initform 0)
   (dth
    :reader dth
    :initarg :dth
    :type cl:fixnum
    :initform 0)
   (flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass vel_ctrl-request (<vel_ctrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vel_ctrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vel_ctrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<vel_ctrl-request> is deprecated: use Thus_g5-srv:vel_ctrl-request instead.")))

(cl:ensure-generic-function 'dx-val :lambda-list '(m))
(cl:defmethod dx-val ((m <vel_ctrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:dx-val is deprecated.  Use Thus_g5-srv:dx instead.")
  (dx m))

(cl:ensure-generic-function 'dy-val :lambda-list '(m))
(cl:defmethod dy-val ((m <vel_ctrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:dy-val is deprecated.  Use Thus_g5-srv:dy instead.")
  (dy m))

(cl:ensure-generic-function 'dth-val :lambda-list '(m))
(cl:defmethod dth-val ((m <vel_ctrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:dth-val is deprecated.  Use Thus_g5-srv:dth instead.")
  (dth m))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <vel_ctrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:flag-val is deprecated.  Use Thus_g5-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vel_ctrl-request>) ostream)
  "Serializes a message object of type '<vel_ctrl-request>"
  (cl:let* ((signed (cl:slot-value msg 'dx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vel_ctrl-request>) istream)
  "Deserializes a message object of type '<vel_ctrl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dx) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dy) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dth) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vel_ctrl-request>)))
  "Returns string type for a service object of type '<vel_ctrl-request>"
  "Thus_g5/vel_ctrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vel_ctrl-request)))
  "Returns string type for a service object of type 'vel_ctrl-request"
  "Thus_g5/vel_ctrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vel_ctrl-request>)))
  "Returns md5sum for a message object of type '<vel_ctrl-request>"
  "7d814a1679e0452bdd864dd2c3793820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vel_ctrl-request)))
  "Returns md5sum for a message object of type 'vel_ctrl-request"
  "7d814a1679e0452bdd864dd2c3793820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vel_ctrl-request>)))
  "Returns full string definition for message of type '<vel_ctrl-request>"
  (cl:format cl:nil "int8 dx~%int8 dy~%int8 dth~%int8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vel_ctrl-request)))
  "Returns full string definition for message of type 'vel_ctrl-request"
  (cl:format cl:nil "int8 dx~%int8 dy~%int8 dth~%int8 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vel_ctrl-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vel_ctrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'vel_ctrl-request
    (cl:cons ':dx (dx msg))
    (cl:cons ':dy (dy msg))
    (cl:cons ':dth (dth msg))
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude vel_ctrl-response.msg.html

(cl:defclass <vel_ctrl-response> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (w
    :reader w
    :initarg :w
    :type cl:float
    :initform 0.0))
)

(cl:defclass vel_ctrl-response (<vel_ctrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vel_ctrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vel_ctrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<vel_ctrl-response> is deprecated: use Thus_g5-srv:vel_ctrl-response instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <vel_ctrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:vx-val is deprecated.  Use Thus_g5-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <vel_ctrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:vy-val is deprecated.  Use Thus_g5-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'w-val :lambda-list '(m))
(cl:defmethod w-val ((m <vel_ctrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:w-val is deprecated.  Use Thus_g5-srv:w instead.")
  (w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vel_ctrl-response>) ostream)
  "Serializes a message object of type '<vel_ctrl-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vel_ctrl-response>) istream)
  "Deserializes a message object of type '<vel_ctrl-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vel_ctrl-response>)))
  "Returns string type for a service object of type '<vel_ctrl-response>"
  "Thus_g5/vel_ctrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vel_ctrl-response)))
  "Returns string type for a service object of type 'vel_ctrl-response"
  "Thus_g5/vel_ctrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vel_ctrl-response>)))
  "Returns md5sum for a message object of type '<vel_ctrl-response>"
  "7d814a1679e0452bdd864dd2c3793820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vel_ctrl-response)))
  "Returns md5sum for a message object of type 'vel_ctrl-response"
  "7d814a1679e0452bdd864dd2c3793820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vel_ctrl-response>)))
  "Returns full string definition for message of type '<vel_ctrl-response>"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vel_ctrl-response)))
  "Returns full string definition for message of type 'vel_ctrl-response"
  (cl:format cl:nil "float32 vx~%float32 vy~%float32 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vel_ctrl-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vel_ctrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'vel_ctrl-response
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':w (w msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'vel_ctrl)))
  'vel_ctrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'vel_ctrl)))
  'vel_ctrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vel_ctrl)))
  "Returns string type for a service object of type '<vel_ctrl>"
  "Thus_g5/vel_ctrl")