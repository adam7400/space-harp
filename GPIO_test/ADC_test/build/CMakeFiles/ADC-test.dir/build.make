# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/pi/Projects/space-harp/GPIO_test/ADC_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Projects/space-harp/GPIO_test/ADC_test/build

# Include any dependencies generated for this target.
include CMakeFiles/ADC-test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ADC-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ADC-test.dir/flags.make

CMakeFiles/ADC-test.dir/main.cpp.o: CMakeFiles/ADC-test.dir/flags.make
CMakeFiles/ADC-test.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Projects/space-harp/GPIO_test/ADC_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ADC-test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ADC-test.dir/main.cpp.o -c /home/pi/Projects/space-harp/GPIO_test/ADC_test/main.cpp

CMakeFiles/ADC-test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ADC-test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Projects/space-harp/GPIO_test/ADC_test/main.cpp > CMakeFiles/ADC-test.dir/main.cpp.i

CMakeFiles/ADC-test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ADC-test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Projects/space-harp/GPIO_test/ADC_test/main.cpp -o CMakeFiles/ADC-test.dir/main.cpp.s

# Object files for target ADC-test
ADC__test_OBJECTS = \
"CMakeFiles/ADC-test.dir/main.cpp.o"

# External object files for target ADC-test
ADC__test_EXTERNAL_OBJECTS =

ADC-test: CMakeFiles/ADC-test.dir/main.cpp.o
ADC-test: CMakeFiles/ADC-test.dir/build.make
ADC-test: CMakeFiles/ADC-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Projects/space-harp/GPIO_test/ADC_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ADC-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ADC-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ADC-test.dir/build: ADC-test

.PHONY : CMakeFiles/ADC-test.dir/build

CMakeFiles/ADC-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ADC-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ADC-test.dir/clean

CMakeFiles/ADC-test.dir/depend:
	cd /home/pi/Projects/space-harp/GPIO_test/ADC_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Projects/space-harp/GPIO_test/ADC_test /home/pi/Projects/space-harp/GPIO_test/ADC_test /home/pi/Projects/space-harp/GPIO_test/ADC_test/build /home/pi/Projects/space-harp/GPIO_test/ADC_test/build /home/pi/Projects/space-harp/GPIO_test/ADC_test/build/CMakeFiles/ADC-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ADC-test.dir/depend

