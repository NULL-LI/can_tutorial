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
CMAKE_SOURCE_DIR = /home/null/tools/can_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/null/tools/can_tutorial/qt-build

# Include any dependencies generated for this target.
include CMakeFiles/simple_can.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple_can.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple_can.dir/flags.make

CMakeFiles/simple_can.dir/simple_can.cpp.o: CMakeFiles/simple_can.dir/flags.make
CMakeFiles/simple_can.dir/simple_can.cpp.o: ../simple_can.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/null/tools/can_tutorial/qt-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple_can.dir/simple_can.cpp.o"
	g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_can.dir/simple_can.cpp.o -c /home/null/tools/can_tutorial/simple_can.cpp

CMakeFiles/simple_can.dir/simple_can.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_can.dir/simple_can.cpp.i"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/null/tools/can_tutorial/simple_can.cpp > CMakeFiles/simple_can.dir/simple_can.cpp.i

CMakeFiles/simple_can.dir/simple_can.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_can.dir/simple_can.cpp.s"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/null/tools/can_tutorial/simple_can.cpp -o CMakeFiles/simple_can.dir/simple_can.cpp.s

CMakeFiles/simple_can.dir/simple_can.cpp.o.requires:

.PHONY : CMakeFiles/simple_can.dir/simple_can.cpp.o.requires

CMakeFiles/simple_can.dir/simple_can.cpp.o.provides: CMakeFiles/simple_can.dir/simple_can.cpp.o.requires
	$(MAKE) -f CMakeFiles/simple_can.dir/build.make CMakeFiles/simple_can.dir/simple_can.cpp.o.provides.build
.PHONY : CMakeFiles/simple_can.dir/simple_can.cpp.o.provides

CMakeFiles/simple_can.dir/simple_can.cpp.o.provides.build: CMakeFiles/simple_can.dir/simple_can.cpp.o


# Object files for target simple_can
simple_can_OBJECTS = \
"CMakeFiles/simple_can.dir/simple_can.cpp.o"

# External object files for target simple_can
simple_can_EXTERNAL_OBJECTS =

simple_can: CMakeFiles/simple_can.dir/simple_can.cpp.o
simple_can: CMakeFiles/simple_can.dir/build.make
simple_can: ../libcontrolcan.so
simple_can: CMakeFiles/simple_can.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/null/tools/can_tutorial/qt-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable simple_can"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_can.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple_can.dir/build: simple_can

.PHONY : CMakeFiles/simple_can.dir/build

CMakeFiles/simple_can.dir/requires: CMakeFiles/simple_can.dir/simple_can.cpp.o.requires

.PHONY : CMakeFiles/simple_can.dir/requires

CMakeFiles/simple_can.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple_can.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple_can.dir/clean

CMakeFiles/simple_can.dir/depend:
	cd /home/null/tools/can_tutorial/qt-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/null/tools/can_tutorial /home/null/tools/can_tutorial /home/null/tools/can_tutorial/qt-build /home/null/tools/can_tutorial/qt-build /home/null/tools/can_tutorial/qt-build/CMakeFiles/simple_can.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple_can.dir/depend

