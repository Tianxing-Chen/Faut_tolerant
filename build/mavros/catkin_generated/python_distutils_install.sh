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

echo_and_run cd "/home/chen/fault_tolerant_control/src/mavros/mavros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/chen/fault_tolerant_control/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/chen/fault_tolerant_control/install/lib/python2.7/dist-packages:/home/chen/fault_tolerant_control/build/mavros/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/chen/fault_tolerant_control/build/mavros" \
    "/usr/bin/python2" \
    "/home/chen/fault_tolerant_control/src/mavros/mavros/setup.py" \
     \
    build --build-base "/home/chen/fault_tolerant_control/build/mavros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/chen/fault_tolerant_control/install" --install-scripts="/home/chen/fault_tolerant_control/install/bin"
