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
CMAKE_SOURCE_DIR = /home/ziyi/code/LMS-Filter/HW4_LMS_code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ziyi/code/LMS-Filter/HW4_LMS_code/build

# Include any dependencies generated for this target.
include app/CMakeFiles/LMS.dir/depend.make

# Include the progress variables for this target.
include app/CMakeFiles/LMS.dir/progress.make

# Include the compile flags for this target's objects.
include app/CMakeFiles/LMS.dir/flags.make

app/CMakeFiles/LMS.dir/main.cpp.o: app/CMakeFiles/LMS.dir/flags.make
app/CMakeFiles/LMS.dir/main.cpp.o: ../app/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ziyi/code/LMS-Filter/HW4_LMS_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/CMakeFiles/LMS.dir/main.cpp.o"
	cd /home/ziyi/code/LMS-Filter/HW4_LMS_code/build/app && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LMS.dir/main.cpp.o -c /home/ziyi/code/LMS-Filter/HW4_LMS_code/app/main.cpp

app/CMakeFiles/LMS.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LMS.dir/main.cpp.i"
	cd /home/ziyi/code/LMS-Filter/HW4_LMS_code/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ziyi/code/LMS-Filter/HW4_LMS_code/app/main.cpp > CMakeFiles/LMS.dir/main.cpp.i

app/CMakeFiles/LMS.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LMS.dir/main.cpp.s"
	cd /home/ziyi/code/LMS-Filter/HW4_LMS_code/build/app && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ziyi/code/LMS-Filter/HW4_LMS_code/app/main.cpp -o CMakeFiles/LMS.dir/main.cpp.s

# Object files for target LMS
LMS_OBJECTS = \
"CMakeFiles/LMS.dir/main.cpp.o"

# External object files for target LMS
LMS_EXTERNAL_OBJECTS =

app/LMS: app/CMakeFiles/LMS.dir/main.cpp.o
app/LMS: app/CMakeFiles/LMS.dir/build.make
app/LMS: src/libmyfun.so
app/LMS: app/CMakeFiles/LMS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ziyi/code/LMS-Filter/HW4_LMS_code/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LMS"
	cd /home/ziyi/code/LMS-Filter/HW4_LMS_code/build/app && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LMS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/CMakeFiles/LMS.dir/build: app/LMS

.PHONY : app/CMakeFiles/LMS.dir/build

app/CMakeFiles/LMS.dir/clean:
	cd /home/ziyi/code/LMS-Filter/HW4_LMS_code/build/app && $(CMAKE_COMMAND) -P CMakeFiles/LMS.dir/cmake_clean.cmake
.PHONY : app/CMakeFiles/LMS.dir/clean

app/CMakeFiles/LMS.dir/depend:
	cd /home/ziyi/code/LMS-Filter/HW4_LMS_code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ziyi/code/LMS-Filter/HW4_LMS_code /home/ziyi/code/LMS-Filter/HW4_LMS_code/app /home/ziyi/code/LMS-Filter/HW4_LMS_code/build /home/ziyi/code/LMS-Filter/HW4_LMS_code/build/app /home/ziyi/code/LMS-Filter/HW4_LMS_code/build/app/CMakeFiles/LMS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/CMakeFiles/LMS.dir/depend
