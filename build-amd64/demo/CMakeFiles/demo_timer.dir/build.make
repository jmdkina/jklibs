# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /opt/data/proj/dev/jklibs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/data/proj/dev/jklibs/build-amd64

# Include any dependencies generated for this target.
include demo/CMakeFiles/demo_timer.dir/depend.make

# Include the progress variables for this target.
include demo/CMakeFiles/demo_timer.dir/progress.make

# Include the compile flags for this target's objects.
include demo/CMakeFiles/demo_timer.dir/flags.make

demo/CMakeFiles/demo_timer.dir/base_timer.c.o: demo/CMakeFiles/demo_timer.dir/flags.make
demo/CMakeFiles/demo_timer.dir/base_timer.c.o: ../demo/base_timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/data/proj/dev/jklibs/build-amd64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object demo/CMakeFiles/demo_timer.dir/base_timer.c.o"
	cd /opt/data/proj/dev/jklibs/build-amd64/demo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/demo_timer.dir/base_timer.c.o   -c /opt/data/proj/dev/jklibs/demo/base_timer.c

demo/CMakeFiles/demo_timer.dir/base_timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/demo_timer.dir/base_timer.c.i"
	cd /opt/data/proj/dev/jklibs/build-amd64/demo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /opt/data/proj/dev/jklibs/demo/base_timer.c > CMakeFiles/demo_timer.dir/base_timer.c.i

demo/CMakeFiles/demo_timer.dir/base_timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/demo_timer.dir/base_timer.c.s"
	cd /opt/data/proj/dev/jklibs/build-amd64/demo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /opt/data/proj/dev/jklibs/demo/base_timer.c -o CMakeFiles/demo_timer.dir/base_timer.c.s

demo/CMakeFiles/demo_timer.dir/base_timer.c.o.requires:

.PHONY : demo/CMakeFiles/demo_timer.dir/base_timer.c.o.requires

demo/CMakeFiles/demo_timer.dir/base_timer.c.o.provides: demo/CMakeFiles/demo_timer.dir/base_timer.c.o.requires
	$(MAKE) -f demo/CMakeFiles/demo_timer.dir/build.make demo/CMakeFiles/demo_timer.dir/base_timer.c.o.provides.build
.PHONY : demo/CMakeFiles/demo_timer.dir/base_timer.c.o.provides

demo/CMakeFiles/demo_timer.dir/base_timer.c.o.provides.build: demo/CMakeFiles/demo_timer.dir/base_timer.c.o


# Object files for target demo_timer
demo_timer_OBJECTS = \
"CMakeFiles/demo_timer.dir/base_timer.c.o"

# External object files for target demo_timer
demo_timer_EXTERNAL_OBJECTS =

demo/demo_timer: demo/CMakeFiles/demo_timer.dir/base_timer.c.o
demo/demo_timer: demo/CMakeFiles/demo_timer.dir/build.make
demo/demo_timer: demo/CMakeFiles/demo_timer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/data/proj/dev/jklibs/build-amd64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable demo_timer"
	cd /opt/data/proj/dev/jklibs/build-amd64/demo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo_timer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/CMakeFiles/demo_timer.dir/build: demo/demo_timer

.PHONY : demo/CMakeFiles/demo_timer.dir/build

demo/CMakeFiles/demo_timer.dir/requires: demo/CMakeFiles/demo_timer.dir/base_timer.c.o.requires

.PHONY : demo/CMakeFiles/demo_timer.dir/requires

demo/CMakeFiles/demo_timer.dir/clean:
	cd /opt/data/proj/dev/jklibs/build-amd64/demo && $(CMAKE_COMMAND) -P CMakeFiles/demo_timer.dir/cmake_clean.cmake
.PHONY : demo/CMakeFiles/demo_timer.dir/clean

demo/CMakeFiles/demo_timer.dir/depend:
	cd /opt/data/proj/dev/jklibs/build-amd64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/data/proj/dev/jklibs /opt/data/proj/dev/jklibs/demo /opt/data/proj/dev/jklibs/build-amd64 /opt/data/proj/dev/jklibs/build-amd64/demo /opt/data/proj/dev/jklibs/build-amd64/demo/CMakeFiles/demo_timer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/CMakeFiles/demo_timer.dir/depend

