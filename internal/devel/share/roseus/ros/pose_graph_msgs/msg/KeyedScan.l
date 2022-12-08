;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_msgs::KeyedScan)
  (if (not (find-package "POSE_GRAPH_MSGS"))
    (make-package "POSE_GRAPH_MSGS"))
  (shadow 'KeyedScan (find-package "POSE_GRAPH_MSGS")))
(unless (find-package "POSE_GRAPH_MSGS::KEYEDSCAN")
  (make-package "POSE_GRAPH_MSGS::KEYEDSCAN"))

(in-package "ROS")
;;//! \htmlinclude KeyedScan.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass pose_graph_msgs::KeyedScan
  :super ros::object
  :slots (_key _scan ))

(defmethod pose_graph_msgs::KeyedScan
  (:init
   (&key
    ((:key __key) 0)
    ((:scan __scan) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _key (round __key))
   (setq _scan __scan)
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:scan
   (&rest __scan)
   (if (keywordp (car __scan))
       (send* _scan __scan)
     (progn
       (if __scan (setq _scan (car __scan)))
       _scan)))
  (:serialization-length
   ()
   (+
    ;; uint64 _key
    8
    ;; sensor_msgs/PointCloud2 _scan
    (send _scan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _key
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key) (= (length (_key . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key . bv) 0) 0) s)
              (write-long (ash (elt (_key . bv) 1) -1) s))
             ((and (class _key) (= (length (_key . bv)) 1)) ;; big1
              (write-long (elt (_key . bv) 0) s)
              (write-long (if (>= _key 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key s)(write-long (if (>= _key 0) 0 #xffffffff) s)))
     ;; sensor_msgs/PointCloud2 _scan
       (send _scan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _key
     
#+(or :alpha :irix6 :x86_64)
      (setf _key (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; sensor_msgs/PointCloud2 _scan
     (send _scan :deserialize buf ptr-) (incf ptr- (send _scan :serialization-length))
   ;;
   self)
  )

(setf (get pose_graph_msgs::KeyedScan :md5sum-) "4038d31be231d130b6ea4e485e3d4e6a")
(setf (get pose_graph_msgs::KeyedScan :datatype-) "pose_graph_msgs/KeyedScan")
(setf (get pose_graph_msgs::KeyedScan :definition-)
      "# Each keyed scan corresponds to a keyed pose in broadcasted PoseGraph
# messages.
uint64 key
sensor_msgs/PointCloud2 scan

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :pose_graph_msgs/KeyedScan "4038d31be231d130b6ea4e485e3d4e6a")


