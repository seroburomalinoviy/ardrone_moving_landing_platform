# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hammerviking/robotic_software/ardrone_moving_landing_platform/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build

# Utility rule file for clean_test_results_ros_qr_tracker.

# Include the progress variables for this target.
include camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/progress.make

camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker:
	cd /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker && /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/test_results/ros_qr_tracker

clean_test_results_ros_qr_tracker: camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker
clean_test_results_ros_qr_tracker: camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/build.make

.PHONY : clean_test_results_ros_qr_tracker

# Rule to build all files generated by this target.
camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/build: clean_test_results_ros_qr_tracker

.PHONY : camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/build

camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/clean:
	cd /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_ros_qr_tracker.dir/cmake_clean.cmake
.PHONY : camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/clean

camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/depend:
	cd /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hammerviking/robotic_software/ardrone_moving_landing_platform/src /home/hammerviking/robotic_software/ardrone_moving_landing_platform/src/camera/ros_qr_tracker /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker /home/hammerviking/robotic_software/ardrone_moving_landing_platform/build/camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : camera/ros_qr_tracker/CMakeFiles/clean_test_results_ros_qr_tracker.dir/depend
