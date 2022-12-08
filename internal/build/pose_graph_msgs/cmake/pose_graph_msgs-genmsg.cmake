# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pose_graph_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ipose_graph_msgs:/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pose_graph_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg" NAME_WE)
add_custom_target(_pose_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_msgs" "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:pose_graph_msgs/PoseGraphEdge:std_msgs/Header:pose_graph_msgs/PoseGraphNode:geometry_msgs/Point"
)

get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg" NAME_WE)
add_custom_target(_pose_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_msgs" "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg" "std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg" NAME_WE)
add_custom_target(_pose_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_msgs" "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg" ""
)

get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg" NAME_WE)
add_custom_target(_pose_graph_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pose_graph_msgs" "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg" "std_msgs/Header:sensor_msgs/PointField:sensor_msgs/PointCloud2"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_cpp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_cpp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_cpp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(pose_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pose_graph_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pose_graph_msgs_generate_messages pose_graph_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_cpp _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_cpp _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_cpp _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_cpp _pose_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_msgs_gencpp)
add_dependencies(pose_graph_msgs_gencpp pose_graph_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_eus(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_eus(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_eus(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(pose_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pose_graph_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pose_graph_msgs_generate_messages pose_graph_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_eus _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_eus _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_eus _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_eus _pose_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_msgs_geneus)
add_dependencies(pose_graph_msgs_geneus pose_graph_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_lisp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_lisp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_lisp(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(pose_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pose_graph_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pose_graph_msgs_generate_messages pose_graph_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_lisp _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_lisp _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_lisp _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_lisp _pose_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_msgs_genlisp)
add_dependencies(pose_graph_msgs_genlisp pose_graph_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_nodejs(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_nodejs(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_nodejs(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pose_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pose_graph_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pose_graph_msgs_generate_messages pose_graph_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_nodejs _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_nodejs _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_nodejs _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_nodejs _pose_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_msgs_gennodejs)
add_dependencies(pose_graph_msgs_gennodejs pose_graph_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_py(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_py(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs
)
_generate_msg_py(pose_graph_msgs
  "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(pose_graph_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pose_graph_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pose_graph_msgs_generate_messages pose_graph_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraph.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_py _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphNode.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_py _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/PoseGraphEdge.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_py _pose_graph_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/blam_ws/src/blam/internal/src/pose_graph_msgs/msg/KeyedScan.msg" NAME_WE)
add_dependencies(pose_graph_msgs_generate_messages_py _pose_graph_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pose_graph_msgs_genpy)
add_dependencies(pose_graph_msgs_genpy pose_graph_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pose_graph_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pose_graph_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pose_graph_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pose_graph_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pose_graph_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pose_graph_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pose_graph_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pose_graph_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(pose_graph_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pose_graph_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pose_graph_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pose_graph_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pose_graph_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pose_graph_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pose_graph_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pose_graph_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(pose_graph_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pose_graph_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pose_graph_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pose_graph_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pose_graph_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
