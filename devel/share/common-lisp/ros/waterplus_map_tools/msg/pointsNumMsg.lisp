; Auto-generated. Do not edit!


(cl:in-package waterplus_map_tools-msg)


;//! \htmlinclude pointsNumMsg.msg.html

(cl:defclass <pointsNumMsg> (roslisp-msg-protocol:ros-message)
  ((wayPointsNum
    :reader wayPointsNum
    :initarg :wayPointsNum
    :type cl:integer
    :initform 0))
)

(cl:defclass pointsNumMsg (<pointsNumMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pointsNumMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pointsNumMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waterplus_map_tools-msg:<pointsNumMsg> is deprecated: use waterplus_map_tools-msg:pointsNumMsg instead.")))

(cl:ensure-generic-function 'wayPointsNum-val :lambda-list '(m))
(cl:defmethod wayPointsNum-val ((m <pointsNumMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waterplus_map_tools-msg:wayPointsNum-val is deprecated.  Use waterplus_map_tools-msg:wayPointsNum instead.")
  (wayPointsNum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pointsNumMsg>) ostream)
  "Serializes a message object of type '<pointsNumMsg>"
  (cl:let* ((signed (cl:slot-value msg 'wayPointsNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pointsNumMsg>) istream)
  "Deserializes a message object of type '<pointsNumMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wayPointsNum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pointsNumMsg>)))
  "Returns string type for a message object of type '<pointsNumMsg>"
  "waterplus_map_tools/pointsNumMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pointsNumMsg)))
  "Returns string type for a message object of type 'pointsNumMsg"
  "waterplus_map_tools/pointsNumMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pointsNumMsg>)))
  "Returns md5sum for a message object of type '<pointsNumMsg>"
  "21963038274a792e85177cbe61934856")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pointsNumMsg)))
  "Returns md5sum for a message object of type 'pointsNumMsg"
  "21963038274a792e85177cbe61934856")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pointsNumMsg>)))
  "Returns full string definition for message of type '<pointsNumMsg>"
  (cl:format cl:nil "int32 wayPointsNum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pointsNumMsg)))
  "Returns full string definition for message of type 'pointsNumMsg"
  (cl:format cl:nil "int32 wayPointsNum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pointsNumMsg>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pointsNumMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'pointsNumMsg
    (cl:cons ':wayPointsNum (wayPointsNum msg))
))
