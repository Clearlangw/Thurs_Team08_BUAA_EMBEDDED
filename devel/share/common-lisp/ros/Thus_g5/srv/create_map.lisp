; Auto-generated. Do not edit!


(cl:in-package Thus_g5-srv)


;//! \htmlinclude create_map-request.msg.html

(cl:defclass <create_map-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform "")
   (image_path
    :reader image_path
    :initarg :image_path
    :type cl:string
    :initform ""))
)

(cl:defclass create_map-request (<create_map-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <create_map-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'create_map-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<create_map-request> is deprecated: use Thus_g5-srv:create_map-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <create_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:name-val is deprecated.  Use Thus_g5-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <create_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:file_path-val is deprecated.  Use Thus_g5-srv:file_path instead.")
  (file_path m))

(cl:ensure-generic-function 'image_path-val :lambda-list '(m))
(cl:defmethod image_path-val ((m <create_map-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:image_path-val is deprecated.  Use Thus_g5-srv:image_path instead.")
  (image_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <create_map-request>) ostream)
  "Serializes a message object of type '<create_map-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <create_map-request>) istream)
  "Deserializes a message object of type '<create_map-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<create_map-request>)))
  "Returns string type for a service object of type '<create_map-request>"
  "Thus_g5/create_mapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'create_map-request)))
  "Returns string type for a service object of type 'create_map-request"
  "Thus_g5/create_mapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<create_map-request>)))
  "Returns md5sum for a message object of type '<create_map-request>"
  "fdf9d2b99128bd8fc18468084eb93c4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'create_map-request)))
  "Returns md5sum for a message object of type 'create_map-request"
  "fdf9d2b99128bd8fc18468084eb93c4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<create_map-request>)))
  "Returns full string definition for message of type '<create_map-request>"
  (cl:format cl:nil "string name~%string file_path~%string image_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'create_map-request)))
  "Returns full string definition for message of type 'create_map-request"
  (cl:format cl:nil "string name~%string file_path~%string image_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <create_map-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'file_path))
     4 (cl:length (cl:slot-value msg 'image_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <create_map-request>))
  "Converts a ROS message object to a list"
  (cl:list 'create_map-request
    (cl:cons ':name (name msg))
    (cl:cons ':file_path (file_path msg))
    (cl:cons ':image_path (image_path msg))
))
;//! \htmlinclude create_map-response.msg.html

(cl:defclass <create_map-response> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass create_map-response (<create_map-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <create_map-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'create_map-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name Thus_g5-srv:<create_map-response> is deprecated: use Thus_g5-srv:create_map-response instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <create_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader Thus_g5-srv:flag-val is deprecated.  Use Thus_g5-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <create_map-response>) ostream)
  "Serializes a message object of type '<create_map-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <create_map-response>) istream)
  "Deserializes a message object of type '<create_map-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<create_map-response>)))
  "Returns string type for a service object of type '<create_map-response>"
  "Thus_g5/create_mapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'create_map-response)))
  "Returns string type for a service object of type 'create_map-response"
  "Thus_g5/create_mapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<create_map-response>)))
  "Returns md5sum for a message object of type '<create_map-response>"
  "fdf9d2b99128bd8fc18468084eb93c4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'create_map-response)))
  "Returns md5sum for a message object of type 'create_map-response"
  "fdf9d2b99128bd8fc18468084eb93c4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<create_map-response>)))
  "Returns full string definition for message of type '<create_map-response>"
  (cl:format cl:nil "uint8 flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'create_map-response)))
  "Returns full string definition for message of type 'create_map-response"
  (cl:format cl:nil "uint8 flag~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <create_map-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <create_map-response>))
  "Converts a ROS message object to a list"
  (cl:list 'create_map-response
    (cl:cons ':flag (flag msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'create_map)))
  'create_map-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'create_map)))
  'create_map-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'create_map)))
  "Returns string type for a service object of type '<create_map>"
  "Thus_g5/create_map")