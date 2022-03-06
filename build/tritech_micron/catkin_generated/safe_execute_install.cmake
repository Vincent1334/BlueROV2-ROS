execute_process(COMMAND "/home/bluerov/Schreibtisch/blueROV2/build/tritech_micron/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/bluerov/Schreibtisch/blueROV2/build/tritech_micron/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
