# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/pcl-1.10;/usr/include/eigen3;/usr/include".split(';') if "${prefix}/include;/usr/include/pcl-1.10;/usr/include/eigen3;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;geometry_utils;parameter_utils;sensor_msgs;pcl_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpoint_cloud_visualizer;/usr/lib/x86_64-linux-gnu/libpcl_common.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so".split(';') if "-lpoint_cloud_visualizer;/usr/lib/x86_64-linux-gnu/libpcl_common.so;/usr/lib/x86_64-linux-gnu/libboost_system.so;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so;/usr/lib/x86_64-linux-gnu/libboost_date_time.so;/usr/lib/x86_64-linux-gnu/libboost_iostreams.so;/usr/lib/x86_64-linux-gnu/libboost_regex.so" != "" else []
PROJECT_NAME = "point_cloud_visualizer"
PROJECT_SPACE_DIR = "/home/ros/blam_ws/src/blam/internal/install"
PROJECT_VERSION = "0.0.0"
