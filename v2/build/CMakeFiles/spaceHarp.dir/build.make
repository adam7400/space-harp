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
CMAKE_SOURCE_DIR = /home/pi/Projects/temp2/v2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Projects/temp2/v2/build

# Include any dependencies generated for this target.
include CMakeFiles/spaceHarp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/spaceHarp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/spaceHarp.dir/flags.make

CMakeFiles/spaceHarp.dir/main.cpp.o: CMakeFiles/spaceHarp.dir/flags.make
CMakeFiles/spaceHarp.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Projects/temp2/v2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/spaceHarp.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spaceHarp.dir/main.cpp.o -c /home/pi/Projects/temp2/v2/main.cpp

CMakeFiles/spaceHarp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spaceHarp.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Projects/temp2/v2/main.cpp > CMakeFiles/spaceHarp.dir/main.cpp.i

CMakeFiles/spaceHarp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spaceHarp.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Projects/temp2/v2/main.cpp -o CMakeFiles/spaceHarp.dir/main.cpp.s

# Object files for target spaceHarp
spaceHarp_OBJECTS = \
"CMakeFiles/spaceHarp.dir/main.cpp.o"

# External object files for target spaceHarp
spaceHarp_EXTERNAL_OBJECTS =

spaceHarp: CMakeFiles/spaceHarp.dir/main.cpp.o
spaceHarp: CMakeFiles/spaceHarp.dir/build.make
spaceHarp: CMakeFiles/spaceHarp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Projects/temp2/v2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spaceHarp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spaceHarp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/spaceHarp.dir/build: spaceHarp

.PHONY : CMakeFiles/spaceHarp.dir/build

CMakeFiles/spaceHarp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/spaceHarp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/spaceHarp.dir/clean

CMakeFiles/spaceHarp.dir/depend:
	cd /home/pi/Projects/temp2/v2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Projects/temp2/v2 /home/pi/Projects/temp2/v2 /home/pi/Projects/temp2/v2/build /home/pi/Projects/temp2/v2/build /home/pi/Projects/temp2/v2/build/CMakeFiles/spaceHarp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/spaceHarp.dir/depend

