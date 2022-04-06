# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "core: 7 messages, 0 services")

set(MSG_I_FLAGS "-Icore:/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg;-Istd_msgs:/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(core_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg" NAME_WE)
add_custom_target(_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg" "std_msgs/Header"
)

get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg" NAME_WE)
add_custom_target(_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg" "std_msgs/Header"
)

get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg" NAME_WE)
add_custom_target(_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg" ""
)

get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg" NAME_WE)
add_custom_target(_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg" ""
)

get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg" NAME_WE)
add_custom_target(_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg" ""
)

get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg" NAME_WE)
add_custom_target(_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg" ""
)

get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg" NAME_WE)
add_custom_target(_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "core" "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
)
_generate_msg_cpp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
)
_generate_msg_cpp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
)
_generate_msg_cpp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
)
_generate_msg_cpp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
)
_generate_msg_cpp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
)
_generate_msg_cpp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
)

### Generating Services

### Generating Module File
_generate_module_cpp(core
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(core_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(core_generate_messages core_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg" NAME_WE)
add_dependencies(core_generate_messages_cpp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg" NAME_WE)
add_dependencies(core_generate_messages_cpp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg" NAME_WE)
add_dependencies(core_generate_messages_cpp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg" NAME_WE)
add_dependencies(core_generate_messages_cpp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg" NAME_WE)
add_dependencies(core_generate_messages_cpp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg" NAME_WE)
add_dependencies(core_generate_messages_cpp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg" NAME_WE)
add_dependencies(core_generate_messages_cpp _core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_gencpp)
add_dependencies(core_gencpp core_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
)
_generate_msg_eus(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
)
_generate_msg_eus(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
)
_generate_msg_eus(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
)
_generate_msg_eus(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
)
_generate_msg_eus(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
)
_generate_msg_eus(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
)

### Generating Services

### Generating Module File
_generate_module_eus(core
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(core_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(core_generate_messages core_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg" NAME_WE)
add_dependencies(core_generate_messages_eus _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg" NAME_WE)
add_dependencies(core_generate_messages_eus _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg" NAME_WE)
add_dependencies(core_generate_messages_eus _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg" NAME_WE)
add_dependencies(core_generate_messages_eus _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg" NAME_WE)
add_dependencies(core_generate_messages_eus _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg" NAME_WE)
add_dependencies(core_generate_messages_eus _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg" NAME_WE)
add_dependencies(core_generate_messages_eus _core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_geneus)
add_dependencies(core_geneus core_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
)
_generate_msg_lisp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
)
_generate_msg_lisp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
)
_generate_msg_lisp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
)
_generate_msg_lisp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
)
_generate_msg_lisp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
)
_generate_msg_lisp(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
)

### Generating Services

### Generating Module File
_generate_module_lisp(core
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(core_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(core_generate_messages core_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg" NAME_WE)
add_dependencies(core_generate_messages_lisp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg" NAME_WE)
add_dependencies(core_generate_messages_lisp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg" NAME_WE)
add_dependencies(core_generate_messages_lisp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg" NAME_WE)
add_dependencies(core_generate_messages_lisp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg" NAME_WE)
add_dependencies(core_generate_messages_lisp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg" NAME_WE)
add_dependencies(core_generate_messages_lisp _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg" NAME_WE)
add_dependencies(core_generate_messages_lisp _core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_genlisp)
add_dependencies(core_genlisp core_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
)
_generate_msg_nodejs(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
)
_generate_msg_nodejs(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
)
_generate_msg_nodejs(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
)
_generate_msg_nodejs(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
)
_generate_msg_nodejs(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
)
_generate_msg_nodejs(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
)

### Generating Services

### Generating Module File
_generate_module_nodejs(core
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(core_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(core_generate_messages core_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg" NAME_WE)
add_dependencies(core_generate_messages_nodejs _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg" NAME_WE)
add_dependencies(core_generate_messages_nodejs _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg" NAME_WE)
add_dependencies(core_generate_messages_nodejs _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg" NAME_WE)
add_dependencies(core_generate_messages_nodejs _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg" NAME_WE)
add_dependencies(core_generate_messages_nodejs _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg" NAME_WE)
add_dependencies(core_generate_messages_nodejs _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg" NAME_WE)
add_dependencies(core_generate_messages_nodejs _core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_gennodejs)
add_dependencies(core_gennodejs core_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
)
_generate_msg_py(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/Users/vincent/opt/miniconda3/envs/ROS/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
)
_generate_msg_py(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
)
_generate_msg_py(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
)
_generate_msg_py(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
)
_generate_msg_py(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
)
_generate_msg_py(core
  "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
)

### Generating Services

### Generating Module File
_generate_module_py(core
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(core_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(core_generate_messages core_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Bar30.msg" NAME_WE)
add_dependencies(core_generate_messages_py _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Attitude.msg" NAME_WE)
add_dependencies(core_generate_messages_py _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_depth.msg" NAME_WE)
add_dependencies(core_generate_messages_py _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_heading.msg" NAME_WE)
add_dependencies(core_generate_messages_py _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_velocity.msg" NAME_WE)
add_dependencies(core_generate_messages_py _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/Set_target.msg" NAME_WE)
add_dependencies(core_generate_messages_py _core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/core/msg/State.msg" NAME_WE)
add_dependencies(core_generate_messages_py _core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(core_genpy)
add_dependencies(core_genpy core_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS core_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/core
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(core_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/core
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(core_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/core
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(core_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/core
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(core_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core)
  install(CODE "execute_process(COMMAND \"/Users/vincent/opt/miniconda3/envs/ROS/bin/python3.8\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/core
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(core_generate_messages_py std_msgs_generate_messages_py)
endif()
