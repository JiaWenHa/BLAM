# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;geometry_utils;parameter_utils;tf2_ros;pcl_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpoint_cloud_localization".split(';') if "-lpoint_cloud_localization" != "" else []
PROJECT_NAME = "point_cloud_localization"
PROJECT_SPACE_DIR = "/home/ros/blam_ws/src/blam/internal/install"
PROJECT_VERSION = "0.0.0"
