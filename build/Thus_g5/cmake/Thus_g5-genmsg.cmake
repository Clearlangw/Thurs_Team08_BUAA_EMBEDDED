# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "Thus_g5: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(Thus_g5_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv" NAME_WE)
add_custom_target(_Thus_g5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Thus_g5" "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv" NAME_WE)
add_custom_target(_Thus_g5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Thus_g5" "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv" NAME_WE)
add_custom_target(_Thus_g5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Thus_g5" "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv" NAME_WE)
add_custom_target(_Thus_g5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Thus_g5" "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv" NAME_WE)
add_custom_target(_Thus_g5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Thus_g5" "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv" ""
)

get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv" NAME_WE)
add_custom_target(_Thus_g5_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "Thus_g5" "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
)
_generate_srv_cpp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
)
_generate_srv_cpp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
)
_generate_srv_cpp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
)
_generate_srv_cpp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
)
_generate_srv_cpp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
)

### Generating Module File
_generate_module_cpp(Thus_g5
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(Thus_g5_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(Thus_g5_generate_messages Thus_g5_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_cpp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_cpp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_cpp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_cpp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_cpp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_cpp _Thus_g5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Thus_g5_gencpp)
add_dependencies(Thus_g5_gencpp Thus_g5_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Thus_g5_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
)
_generate_srv_eus(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
)
_generate_srv_eus(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
)
_generate_srv_eus(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
)
_generate_srv_eus(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
)
_generate_srv_eus(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
)

### Generating Module File
_generate_module_eus(Thus_g5
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(Thus_g5_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(Thus_g5_generate_messages Thus_g5_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_eus _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_eus _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_eus _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_eus _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_eus _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_eus _Thus_g5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Thus_g5_geneus)
add_dependencies(Thus_g5_geneus Thus_g5_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Thus_g5_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
)
_generate_srv_lisp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
)
_generate_srv_lisp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
)
_generate_srv_lisp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
)
_generate_srv_lisp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
)
_generate_srv_lisp(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
)

### Generating Module File
_generate_module_lisp(Thus_g5
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(Thus_g5_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(Thus_g5_generate_messages Thus_g5_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_lisp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_lisp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_lisp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_lisp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_lisp _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_lisp _Thus_g5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Thus_g5_genlisp)
add_dependencies(Thus_g5_genlisp Thus_g5_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Thus_g5_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
)
_generate_srv_nodejs(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
)
_generate_srv_nodejs(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
)
_generate_srv_nodejs(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
)
_generate_srv_nodejs(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
)
_generate_srv_nodejs(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
)

### Generating Module File
_generate_module_nodejs(Thus_g5
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(Thus_g5_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(Thus_g5_generate_messages Thus_g5_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_nodejs _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_nodejs _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_nodejs _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_nodejs _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_nodejs _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_nodejs _Thus_g5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Thus_g5_gennodejs)
add_dependencies(Thus_g5_gennodejs Thus_g5_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Thus_g5_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
)
_generate_srv_py(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
)
_generate_srv_py(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
)
_generate_srv_py(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
)
_generate_srv_py(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
)
_generate_srv_py(Thus_g5
  "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
)

### Generating Module File
_generate_module_py(Thus_g5
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(Thus_g5_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(Thus_g5_generate_messages Thus_g5_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/nav_goal.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_py _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/modify_waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_py _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/vel_ctrl.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_py _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/waypoint.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_py _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/grab_object.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_py _Thus_g5_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/robot/catkin_ws/src/Thus_g5/srv/create_map.srv" NAME_WE)
add_dependencies(Thus_g5_generate_messages_py _Thus_g5_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(Thus_g5_genpy)
add_dependencies(Thus_g5_genpy Thus_g5_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS Thus_g5_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/Thus_g5
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(Thus_g5_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(Thus_g5_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/Thus_g5
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(Thus_g5_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(Thus_g5_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/Thus_g5
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(Thus_g5_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(Thus_g5_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/Thus_g5
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(Thus_g5_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(Thus_g5_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/Thus_g5
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(Thus_g5_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(Thus_g5_generate_messages_py geometry_msgs_generate_messages_py)
endif()
