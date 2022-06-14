# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "quad_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Iquad_msgs:/home/chen/fault_tolerant_control/src/quad_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(quad_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg" "quad_msgs/QuadDesiredState:geometry_msgs/Vector3:quad_msgs/QuadStateEstimate:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg" NAME_WE)
add_custom_target(_quad_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "quad_msgs" "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)
_generate_msg_cpp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(quad_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(quad_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(quad_msgs_generate_messages quad_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_cpp _quad_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quad_msgs_gencpp)
add_dependencies(quad_msgs_gencpp quad_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quad_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)
_generate_msg_eus(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(quad_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(quad_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(quad_msgs_generate_messages quad_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_eus _quad_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quad_msgs_geneus)
add_dependencies(quad_msgs_geneus quad_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quad_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)
_generate_msg_lisp(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(quad_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(quad_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(quad_msgs_generate_messages quad_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_lisp _quad_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quad_msgs_genlisp)
add_dependencies(quad_msgs_genlisp quad_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quad_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)
_generate_msg_nodejs(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(quad_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(quad_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(quad_msgs_generate_messages quad_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_nodejs _quad_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quad_msgs_gennodejs)
add_dependencies(quad_msgs_gennodejs quad_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quad_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)
_generate_msg_py(quad_msgs
  "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(quad_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(quad_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(quad_msgs_generate_messages quad_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredTorquesAndThrust.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardStatus.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/OnboardParameter.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadDesiredState.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControllerFeedback.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadGpioPwmCtrl.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/Px4Timesync.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadStateEstimate.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadReferenceCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/ControlCommand.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/chen/fault_tolerant_control/src/quad_msgs/msg/QuadRotorThrusts.msg" NAME_WE)
add_dependencies(quad_msgs_generate_messages_py _quad_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(quad_msgs_genpy)
add_dependencies(quad_msgs_genpy quad_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS quad_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/quad_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(quad_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(quad_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/quad_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(quad_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(quad_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/quad_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(quad_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(quad_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/quad_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(quad_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(quad_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/quad_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(quad_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(quad_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
