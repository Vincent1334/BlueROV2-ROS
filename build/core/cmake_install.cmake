# Install script for directory: /home/bluerov/Schreibtisch/BlueROV2/src/core

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bluerov/Schreibtisch/BlueROV2/install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/core.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/cmake" TYPE FILE FILES
    "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/coreConfig.cmake"
    "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/coreConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core" TYPE FILE FILES "/home/bluerov/Schreibtisch/BlueROV2/src/core/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core/launch" TYPE FILE FILES
    "/home/bluerov/Schreibtisch/BlueROV2/src/core/launch/mav_pluginlists.yaml"
    "/home/bluerov/Schreibtisch/BlueROV2/src/core/launch/user_mav.launch"
    "/home/bluerov/Schreibtisch/BlueROV2/src/core/launch/video.launch"
    "/home/bluerov/Schreibtisch/BlueROV2/src/core/launch/bluerov2_node.launch"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/core" TYPE DIRECTORY FILES
    "/home/bluerov/Schreibtisch/BlueROV2/src/core/model"
    "/home/bluerov/Schreibtisch/BlueROV2/src/core/config"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/user_mav")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/video")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/bridge.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/bluerov_node.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/core" TYPE PROGRAM FILES "/home/bluerov/Schreibtisch/BlueROV2/build/core/catkin_generated/installspace/node")
endif()

