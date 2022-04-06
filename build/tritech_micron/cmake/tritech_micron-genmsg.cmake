# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tritech_micron: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itritech_micron:/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg;-Istd_msgs:/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tritech_micron_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg" NAME_WE)
add_custom_target(_tritech_micron_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tritech_micron" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tritech_micron
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tritech_micron
)

### Generating Services

### Generating Module File
_generate_module_cpp(tritech_micron
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tritech_micron
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tritech_micron_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tritech_micron_generate_messages tritech_micron_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg" NAME_WE)
add_dependencies(tritech_micron_generate_messages_cpp _tritech_micron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tritech_micron_gencpp)
add_dependencies(tritech_micron_gencpp tritech_micron_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tritech_micron_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tritech_micron
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tritech_micron
)

### Generating Services

### Generating Module File
_generate_module_eus(tritech_micron
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tritech_micron
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tritech_micron_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tritech_micron_generate_messages tritech_micron_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg" NAME_WE)
add_dependencies(tritech_micron_generate_messages_eus _tritech_micron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tritech_micron_geneus)
add_dependencies(tritech_micron_geneus tritech_micron_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tritech_micron_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tritech_micron
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tritech_micron
)

### Generating Services

### Generating Module File
_generate_module_lisp(tritech_micron
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tritech_micron
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tritech_micron_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tritech_micron_generate_messages tritech_micron_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg" NAME_WE)
add_dependencies(tritech_micron_generate_messages_lisp _tritech_micron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tritech_micron_genlisp)
add_dependencies(tritech_micron_genlisp tritech_micron_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tritech_micron_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tritech_micron
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tritech_micron
)

### Generating Services

### Generating Module File
_generate_module_nodejs(tritech_micron
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tritech_micron
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tritech_micron_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tritech_micron_generate_messages tritech_micron_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg" NAME_WE)
add_dependencies(tritech_micron_generate_messages_nodejs _tritech_micron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tritech_micron_gennodejs)
add_dependencies(tritech_micron_gennodejs tritech_micron_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tritech_micron_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tritech_micron
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tritech_micron
)

### Generating Services

### Generating Module File
_generate_module_py(tritech_micron
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tritech_micron
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tritech_micron_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tritech_micron_generate_messages tritech_micron_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/msg/TritechMicronConfig.msg" NAME_WE)
add_dependencies(tritech_micron_generate_messages_py _tritech_micron_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tritech_micron_genpy)
add_dependencies(tritech_micron_genpy tritech_micron_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tritech_micron_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tritech_micron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tritech_micron
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tritech_micron_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tritech_micron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tritech_micron
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tritech_micron_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tritech_micron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tritech_micron
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tritech_micron_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tritech_micron)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tritech_micron
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tritech_micron_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tritech_micron)
  install(CODE "execute_process(COMMAND \"/Users/vincent/opt/miniconda3/envs/ROS/bin/python3.8\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tritech_micron\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tritech_micron
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tritech_micron
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tritech_micron/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tritech_micron_generate_messages_py std_msgs_generate_messages_py)
endif()
