# CMake generated Testfile for 
# Source directory: /home/chen/fault_tolerant_control/src/mavros/libmavconn
# Build directory: /home/chen/fault_tolerant_control/build/libmavconn
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_libmavconn_gtest_mavconn-test "/home/chen/fault_tolerant_control/build/libmavconn/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/chen/fault_tolerant_control/build/libmavconn/test_results/libmavconn/gtest-mavconn-test.xml" "--return-code" "/home/chen/fault_tolerant_control/devel/.private/libmavconn/lib/libmavconn/mavconn-test --gtest_output=xml:/home/chen/fault_tolerant_control/build/libmavconn/test_results/libmavconn/gtest-mavconn-test.xml")
set_tests_properties(_ctest_libmavconn_gtest_mavconn-test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/melodic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/melodic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/chen/fault_tolerant_control/src/mavros/libmavconn/CMakeLists.txt;109;catkin_add_gtest;/home/chen/fault_tolerant_control/src/mavros/libmavconn/CMakeLists.txt;0;")
subdirs("gtest")
