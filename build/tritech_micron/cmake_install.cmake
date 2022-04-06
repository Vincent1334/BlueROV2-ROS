# Install script for directory: /Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron

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
  include("/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tritech_micron" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/include/tritech_micron/ScanConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/Users/vincent/opt/miniconda3/envs/ROS/bin/python3.8" -m compileall "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/lib/python3.8/site-packages/tritech_micron/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.8/site-packages/tritech_micron" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/lib/python3.8/site-packages/tritech_micron/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tritech_micron/msg" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tritech_micron/cmake" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/installspace/tritech_micron-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/include/tritech_micron")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/share/roseus/ros/tritech_micron")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/share/common-lisp/ros/tritech_micron")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/share/gennodejs/ros/tritech_micron")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/Users/vincent/opt/miniconda3/envs/ROS/bin/python3.8" -m compileall "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/lib/python3.8/site-packages/tritech_micron")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.8/site-packages" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/lib/python3.8/site-packages/tritech_micron" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.8/site-packages" TYPE DIRECTORY FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/devel/lib/python3.8/site-packages/tritech_micron" FILES_MATCHING REGEX "/users/vincent/documents/uni/semester_5/bluerov2/devel/lib/python3.8/site-packages/tritech_micron/.+/__init__.pyc?$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/installspace/tritech_micron.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tritech_micron/cmake" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/installspace/tritech_micron-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tritech_micron/cmake" TYPE FILE FILES
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/installspace/tritech_micronConfig.cmake"
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/installspace/tritech_micronConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tritech_micron" TYPE FILE FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/tritech_micron" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/installspace/csv_to_pointcloud.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/tritech_micron" TYPE PROGRAM FILES "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron/catkin_generated/installspace/scan.py")
endif()

