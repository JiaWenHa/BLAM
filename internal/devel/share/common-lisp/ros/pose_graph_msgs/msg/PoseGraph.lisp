; Auto-generated. Do not edit!


(cl:in-package pose_graph_msgs-msg)


;//! \htmlinclude PoseGraph.msg.html

(cl:defclass <PoseGraph> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector pose_graph_msgs-msg:PoseGraphNode)
   :initform (cl:make-array 0 :element-type 'pose_graph_msgs-msg:PoseGraphNode :initial-element (cl:make-instance 'pose_graph_msgs-msg:PoseGraphNode)))
   (edges
    :reader edges
    :initarg :edges
    :type (cl:vector pose_graph_msgs-msg:PoseGraphEdge)
   :initform (cl:make-array 0 :element-type 'pose_graph_msgs-msg:PoseGraphEdge :initial-element (cl:make-instance 'pose_graph_msgs-msg:PoseGraphEdge))))
)

(cl:defclass PoseGraph (<PoseGraph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseGraph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseGraph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_msgs-msg:<PoseGraph> is deprecated: use pose_graph_msgs-msg:PoseGraph instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PoseGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_msgs-msg:header-val is deprecated.  Use pose_graph_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <PoseGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_msgs-msg:nodes-val is deprecated.  Use pose_graph_msgs-msg:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'edges-val :lambda-list '(m))
(cl:defmethod edges-val ((m <PoseGraph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_msgs-msg:edges-val is deprecated.  Use pose_graph_msgs-msg:edges instead.")
  (edges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseGraph>) ostream)
  "Serializes a message object of type '<PoseGraph>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseGraph>) istream)
  "Deserializes a message object of type '<PoseGraph>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_graph_msgs-msg:PoseGraphNode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pose_graph_msgs-msg:PoseGraphEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseGraph>)))
  "Returns string type for a message object of type '<PoseGraph>"
  "pose_graph_msgs/PoseGraph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseGraph)))
  "Returns string type for a message object of type 'PoseGraph"
  "pose_graph_msgs/PoseGraph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseGraph>)))
  "Returns md5sum for a message object of type '<PoseGraph>"
  "483fdea4a5d26454e6dac91a4e5db16c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseGraph)))
  "Returns md5sum for a message object of type 'PoseGraph"
  "483fdea4a5d26454e6dac91a4e5db16c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseGraph>)))
  "Returns full string definition for message of type '<PoseGraph>"
  (cl:format cl:nil "Header header~%~%# Graph nodes and edges.~%PoseGraphNode[] nodes~%PoseGraphEdge[] edges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pose_graph_msgs/PoseGraphNode~%Header header~%~%# Every pose has a unique key.~%uint64 key~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pose_graph_msgs/PoseGraphEdge~%uint64 key_from~%uint64 key_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseGraph)))
  "Returns full string definition for message of type 'PoseGraph"
  (cl:format cl:nil "Header header~%~%# Graph nodes and edges.~%PoseGraphNode[] nodes~%PoseGraphEdge[] edges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pose_graph_msgs/PoseGraphNode~%Header header~%~%# Every pose has a unique key.~%uint64 key~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: pose_graph_msgs/PoseGraphEdge~%uint64 key_from~%uint64 key_to~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseGraph>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseGraph>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseGraph
    (cl:cons ':header (header msg))
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':edges (edges msg))
))
