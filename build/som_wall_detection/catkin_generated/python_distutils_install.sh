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

echo_and_run cd "/home/bluerov/Schreibtisch/BlueROV2/src/som_wall_detection"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/bluerov/Schreibtisch/BlueROV2/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bluerov/Schreibtisch/BlueROV2/install/lib/python2.7/dist-packages:/home/bluerov/Schreibtisch/BlueROV2/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bluerov/Schreibtisch/BlueROV2/build" \
    "/usr/bin/python2" \
    "/home/bluerov/Schreibtisch/BlueROV2/src/som_wall_detection/setup.py" \
     \
    build --build-base "/home/bluerov/Schreibtisch/BlueROV2/build/som_wall_detection" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/bluerov/Schreibtisch/BlueROV2/install" --install-scripts="/home/bluerov/Schreibtisch/BlueROV2/install/bin"
