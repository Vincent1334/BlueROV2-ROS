# Install script for directory: /Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/vincent/opt/miniconda3/envs/ROS/bin/llvm-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/msg" TYPE FILE FILES
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/cmake" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/core-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/include/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/share/roseus/ros/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/share/common-lisp/ros/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/share/gennodejs/ros/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/Users/vincent/opt/miniconda3/envs/ROS/bin/python3.8" -m compileall "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/lib/python3.8/site-packages/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.8/site-packages" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/lib/python3.8/site-packages/core")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/cmake" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/core-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/cmake" TYPE FILE FILES
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/coreConfig.cmake"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/coreConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/launch" TYPE FILE FILES
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/launch/mav_pluginlists.yaml"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/launch/user_mav.launch"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/launch/video.launch"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/launch/bluerov2_node.launch"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/launch/control.launch"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core" TYPE DIRECTORY FILES
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/model"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/config"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/user_mav")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/video")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/bridge.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/bluerov_node.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/node")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/depth_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/heading_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/velocity_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/commander.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/gamepad.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/core/catkin_generated/installspace/gui.py")
endif()

