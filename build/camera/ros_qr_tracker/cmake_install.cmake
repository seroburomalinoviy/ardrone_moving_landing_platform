# Install script for directory: /home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/install")
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
  include("/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_qr_tracker/msg" TYPE FILE FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker/msg/Percept.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_qr_tracker/srv" TYPE FILE FILES
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker/srv/AddTarget.srv"
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker/srv/SetTarget.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_qr_tracker/cmake" TYPE FILE FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker/catkin_generated/installspace/ros_qr_tracker-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/include/ros_qr_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/share/roseus/ros/ros_qr_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/share/common-lisp/ros/ros_qr_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/share/gennodejs/ros/ros_qr_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/lib/python2.7/dist-packages/ros_qr_tracker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/lib/python2.7/dist-packages/ros_qr_tracker" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/lib/python2.7/dist-packages/ros_qr_tracker" FILES_MATCHING REGEX "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/devel/lib/python2.7/dist-packages/ros_qr_tracker/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker/catkin_generated/installspace/ros_qr_tracker.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_qr_tracker/cmake" TYPE FILE FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker/catkin_generated/installspace/ros_qr_tracker-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_qr_tracker/cmake" TYPE FILE FILES
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker/catkin_generated/installspace/ros_qr_trackerConfig.cmake"
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker/catkin_generated/installspace/ros_qr_trackerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ros_qr_tracker" TYPE FILE FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ros_qr_tracker" TYPE PROGRAM FILES
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker/scripts/create_qr_code.py"
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker/nodes/qr_tracker.py"
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker/nodes/webcam.py"
    )
endif()

