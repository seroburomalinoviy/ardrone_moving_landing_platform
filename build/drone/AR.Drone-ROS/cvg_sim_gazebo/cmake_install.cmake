# Install script for directory: /home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/drone/AR.Drone-ROS/cvg_sim_gazebo

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/drone/AR.Drone-ROS/cvg_sim_gazebo/catkin_generated/installspace/cvg_sim_gazebo.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cvg_sim_gazebo/cmake" TYPE FILE FILES
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/drone/AR.Drone-ROS/cvg_sim_gazebo/catkin_generated/installspace/cvg_sim_gazeboConfig.cmake"
    "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/drone/AR.Drone-ROS/cvg_sim_gazebo/catkin_generated/installspace/cvg_sim_gazeboConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cvg_sim_gazebo" TYPE FILE FILES "/home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/drone/AR.Drone-ROS/cvg_sim_gazebo/package.xml")
endif()
