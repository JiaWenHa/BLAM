;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_msgs::PoseGraphNode)
  (if (not (find-package "POSE_GRAPH_MSGS"))
    (make-package "POSE_GRAPH_MSGS"))
  (shadow 'PoseGraphNode (find-package "POSE_GRAPH_MSGS")))
(unless (find-package "POSE_GRAPH_MSGS::POSEGRAPHNODE")
  (make-package "POSE_GRAPH_MSGS::POSEGRAPHNODE"))

(in-package "ROS")
;;//! \htmlinclude PoseGraphNode.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pose_graph_msgs::PoseGraphNode
  :super ros::object
  :slots (_header _key _pose ))

(defmethod pose_graph_msgs::PoseGraphNode
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:key __key) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _key (round __key))
   (setq _pose __pose)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _key
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
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
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
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
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get pose_graph_msgs::PoseGraphNode :md5sum-) "d9d31685ad1168ea79c583d44dd3acd2")
(setf (get pose_graph_msgs::PoseGraphNode :datatype-) "pose_graph_msgs/PoseGraphNode")
(setf (get pose_graph_msgs::PoseGraphNode :definition-)
      "Header header

# Every pose has a unique key.
uint64 key
geometry_msgs/Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :pose_graph_msgs/PoseGraphNode "d9d31685ad1168ea79c583d44dd3acd2")


