; Auto-generated. Do not edit!


(cl:in-package xfyun_new-msg)


;//! \htmlinclude bridgeToBack.msg.html

(cl:defclass <bridgeToBack> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (content
    :reader content
    :initarg :content
    :type cl:string
    :initform ""))
)

(cl:defclass bridgeToBack (<bridgeToBack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bridgeToBack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bridgeToBack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xfyun_new-msg:<bridgeToBack> is deprecated: use xfyun_new-msg:bridgeToBack instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <bridgeToBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xfyun_new-msg:state-val is deprecated.  Use xfyun_new-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <bridgeToBack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xfyun_new-msg:content-val is deprecated.  Use xfyun_new-msg:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bridgeToBack>) ostream)
  "Serializes a message object of type '<bridgeToBack>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bridgeToBack>) istream)
  "Deserializes a message object of type '<bridgeToBack>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'content) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'content) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bridgeToBack>)))
  "Returns string type for a message object of type '<bridgeToBack>"
  "xfyun_new/bridgeToBack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bridgeToBack)))
  "Returns string type for a message object of type 'bridgeToBack"
  "xfyun_new/bridgeToBack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bridgeToBack>)))
  "Returns md5sum for a message object of type '<bridgeToBack>"
  "53c8c8d6cb18826e9166d1d2c8b0d1f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bridgeToBack)))
  "Returns md5sum for a message object of type 'bridgeToBack"
  "53c8c8d6cb18826e9166d1d2c8b0d1f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bridgeToBack>)))
  "Returns full string definition for message of type '<bridgeToBack>"
  (cl:format cl:nil "int32 state~%string content~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bridgeToBack)))
  "Returns full string definition for message of type 'bridgeToBack"
  (cl:format cl:nil "int32 state~%string content~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bridgeToBack>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'content))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bridgeToBack>))
  "Converts a ROS message object to a list"
  (cl:list 'bridgeToBack
    (cl:cons ':state (state msg))
    (cl:cons ':content (content msg))
))
