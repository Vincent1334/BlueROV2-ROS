cmake_minimum_required(VERSION 2.8.3)
project(tritech_micron)

find_package(catkin REQUIRED COMPONENTS
  dynamic_reconfigure
  genmsg
  geometry_msgs
  message_generation
  rospy
  sensor_msgs
  std_msgs
)

catkin_python_setup()

generate_dynamic_reconfigure_options(cfg/Scan.cfg)

add_message_files(FILES TritechMicronConfig.msg)
generate_messages(DEPENDENCIES std_msgs)

catkin_package(
  CATKIN_DEPENDS
  geometry_msgs
  message_runtime
  rospy
  sensor_msgs
  std_msgs
)

catkin_install_python(
  PROGRAMS
    scripts/csv_to_pointcloud.py
    scripts/scan.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
