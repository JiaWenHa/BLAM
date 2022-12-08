; Auto-generated. Do not edit!


(cl:in-package pose_graph_msgs-msg)


;//! \htmlinclude KeyedScan.msg.html

(cl:defclass <KeyedScan> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0)
   (scan
    :reader scan
    :initarg :scan
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass KeyedScan (<KeyedScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyedScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyedScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pose_graph_msgs-msg:<KeyedScan> is deprecated: use pose_graph_msgs-msg:KeyedScan instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <KeyedScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_msgs-msg:key-val is deprecated.  Use pose_graph_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'scan-val :lambda-list '(m))
(cl:defmethod scan-val ((m <KeyedScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pose_graph_msgs-msg:scan-val is deprecated.  Use pose_graph_msgs-msg:scan instead.")
  (scan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyedScan>) ostream)
  "Serializes a message object of type '<KeyedScan>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyedScan>) istream)
  "Deserializes a message object of type '<KeyedScan>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'key)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyedScan>)))
  "Returns string type for a message object of type '<KeyedScan>"
  "pose_graph_msgs/KeyedScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyedScan)))
  "Returns string type for a message object of type 'KeyedScan"
  "pose_graph_msgs/KeyedScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyedScan>)))
  "Returns md5sum for a message object of type '<KeyedScan>"
  "4038d31be231d130b6ea4e485e3d4e6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyedScan)))
  "Returns md5sum for a message object of type 'KeyedScan"
  "4038d31be231d130b6ea4e485e3d4e6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyedScan>)))
  "Returns full string definition for message of type '<KeyedScan>"
  (cl:format cl:nil "# Each keyed scan corresponds to a keyed pose in broadcasted PoseGraph~%# messages.~%uint64 key~%sensor_msgs/PointCloud2 scan~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyedScan)))
  "Returns full string definition for message of type 'KeyedScan"
  (cl:format cl:nil "# Each keyed scan corresponds to a keyed pose in broadcasted PoseGraph~%# messages.~%uint64 key~%sensor_msgs/PointCloud2 scan~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyedScan>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyedScan>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyedScan
    (cl:cons ':key (key msg))
    (cl:cons ':scan (scan msg))
))
