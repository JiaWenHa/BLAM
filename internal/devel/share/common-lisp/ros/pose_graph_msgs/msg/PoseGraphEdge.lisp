; Auto-generated. Do not edit!


(cl:in-package pose_graph_msgs-msg)


;//! \htmlinclude PoseGraphEdge.msg.html

(cl:defclass <PoseGraphEdge> (roslisp-msg-protocol:ros-message)
  ((key_from
    :reader key_from
    :initarg :key_from
    :type cl:integer
    :initform 0)
   (key_to
    :reader key_to
    :initarg :key_to
    :type cl:integer
    :initform 0))
)

(cl:defclass PoseGraphEdge (<PoseGraphEdge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseGraphEdge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseGraphEdge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_msgs-msg:<PoseGraphEdge> is deprecated: use pose_graph_msgs-msg:PoseGraphEdge instead.")))

(cl:ensure-generic-function 'key_from-val :lambda-list '(m))
(cl:defmethod key_from-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_msgs-msg:key_from-val is deprecated.  Use pose_graph_msgs-msg:key_from instead.")
  (key_from m))

(cl:ensure-generic-function 'key_to-val :lambda-list '(m))
(cl:defmethod key_to-val ((m <PoseGraphEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_msgs-msg:key_to-val is deprecated.  Use pose_graph_msgs-msg:key_to instead.")
  (key_to m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseGraphEdge>) ostream)
  "Serializes a message object of type '<PoseGraphEdge>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_from)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_to)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_to)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseGraphEdge>) istream)
  "Deserializes a message object of type '<PoseGraphEdge>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_from)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key_to)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseGraphEdge>)))
  "Returns string type for a message object of type '<PoseGraphEdge>"
  "pose_graph_msgs/PoseGraphEdge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGraphEdge)))
  "Returns string type for a message object of type 'PoseGraphEdge"
  "pose_graph_msgs/PoseGraphEdge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseGraphEdge>)))
  "Returns md5sum for a message object of type '<PoseGraphEdge>"
  "412ec4974717bfb14dd2482fb43c1f28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseGraphEdge)))
  "Returns md5sum for a message object of type 'PoseGraphEdge"
  "412ec4974717bfb14dd2482fb43c1f28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseGraphEdge>)))
  "Returns full string definition for message of type '<PoseGraphEdge>"
  (cl:format cl:nil "uint64 key_from~%uint64 key_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseGraphEdge)))
  "Returns full string definition for message of type 'PoseGraphEdge"
  (cl:format cl:nil "uint64 key_from~%uint64 key_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseGraphEdge>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseGraphEdge>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseGraphEdge
    (cl:cons ':key_from (key_from msg))
    (cl:cons ':key_to (key_to msg))
))
