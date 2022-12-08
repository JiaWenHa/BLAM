
(cl:in-package :asdf)

(defsystem "pose_graph_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "KeyedScan" :depends-on ("_package_KeyedScan"))
    (:file "_package_KeyedScan" :depends-on ("_package"))
    (:file "PoseGraph" :depends-on ("_package_PoseGraph"))
    (:file "_package_PoseGraph" :depends-on ("_package"))
    (:file "PoseGraphEdge" :depends-on ("_package_PoseGraphEdge"))
    (:file "_package_PoseGraphEdge" :depends-on ("_package"))
    (:file "PoseGraphNode" :depends-on ("_package_PoseGraphNode"))
    (:file "_package_PoseGraphNode" :depends-on ("_package"))
  ))