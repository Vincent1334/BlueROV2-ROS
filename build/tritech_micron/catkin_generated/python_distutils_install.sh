#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/Users/vincent/Documents/Uni/Semester_5/BlueROV2/install/lib/python3.8/site-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/Users/vincent/Documents/Uni/Semester_5/BlueROV2/install/lib/python3.8/site-packages:/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/lib/python3.8/site-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build" \
    "/Users/vincent/opt/miniconda3/envs/ROS/bin/python3.8" \
    "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/src/tritech_micron/setup.py" \
     \
    build --build-base "/Users/vincent/Documents/Uni/Semester_5/BlueROV2/build/tritech_micron" \
    install \
    --root="${DESTDIR-/}" \
     --prefix="/Users/vincent/Documents/Uni/Semester_5/BlueROV2/install" --install-scripts="/Users/vincent/Documents/Uni/Semester_5/BlueROV2/install/bin"
