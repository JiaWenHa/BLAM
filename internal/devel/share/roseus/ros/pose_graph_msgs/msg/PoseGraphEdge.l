;; Auto-generated. Do not edit!


(when (boundp 'pose_graph_msgs::PoseGraphEdge)
  (if (not (find-package "POSE_GRAPH_MSGS"))
    (make-package "POSE_GRAPH_MSGS"))
  (shadow 'PoseGraphEdge (find-package "POSE_GRAPH_MSGS")))
(unless (find-package "POSE_GRAPH_MSGS::POSEGRAPHEDGE")
  (make-package "POSE_GRAPH_MSGS::POSEGRAPHEDGE"))

(in-package "ROS")
;;//! \htmlinclude PoseGraphEdge.msg.html


(defclass pose_graph_msgs::PoseGraphEdge
  :super ros::object
  :slots (_key_from _key_to ))

(defmethod pose_graph_msgs::PoseGraphEdge
  (:init
   (&key
    ((:key_from __key_from) 0)
    ((:key_to __key_to) 0)
    )
   (send-super :init)
   (setq _key_from (round __key_from))
   (setq _key_to (round __key_to))
   self)
  (:key_from
   (&optional __key_from)
   (if __key_from (setq _key_from __key_from)) _key_from)
  (:key_to
   (&optional __key_to)
   (if __key_to (setq _key_to __key_to)) _key_to)
  (:serialization-length
   ()
   (+
    ;; uint64 _key_from
    8
    ;; uint64 _key_to
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _key_from
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_from (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_from) (= (length (_key_from . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_from . bv) 0) 0) s)
              (write-long (ash (elt (_key_from . bv) 1) -1) s))
             ((and (class _key_from) (= (length (_key_from . bv)) 1)) ;; big1
              (write-long (elt (_key_from . bv) 0) s)
              (write-long (if (>= _key_from 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_from s)(write-long (if (>= _key_from 0) 0 #xffffffff) s)))
     ;; uint64 _key_to
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_to (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_to) (= (length (_key_to . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_to . bv) 0) 0) s)
              (write-long (ash (elt (_key_to . bv) 1) -1) s))
             ((and (class _key_to) (= (length (_key_to . bv)) 1)) ;; big1
              (write-long (elt (_key_to . bv) 0) s)
              (write-long (if (>= _key_to 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_to s)(write-long (if (>= _key_to 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _key_from
     
#+(or :alpha :irix6 :x86_64)
      (setf _key_from (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_from (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _key_to
     
#+(or :alpha :irix6 :x86_64)
      (setf _key_to (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_to (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get pose_graph_msgs::PoseGraphEdge :md5sum-) "412ec4974717bfb14dd2482fb43c1f28")
(setf (get pose_graph_msgs::PoseGraphEdge :datatype-) "pose_graph_msgs/PoseGraphEdge")
(setf (get pose_graph_msgs::PoseGraphEdge :definition-)
      "uint64 key_from
uint64 key_to

")



(provide :pose_graph_msgs/PoseGraphEdge "412ec4974717bfb14dd2482fb43c1f28")


