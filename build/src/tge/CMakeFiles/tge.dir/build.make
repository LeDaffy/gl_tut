# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/conor/Dev/gl_tut

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/conor/Dev/gl_tut/build

# Include any dependencies generated for this target.
include src/tge/CMakeFiles/tge.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/tge/CMakeFiles/tge.dir/compiler_depend.make

# Include the progress variables for this target.
include src/tge/CMakeFiles/tge.dir/progress.make

# Include the compile flags for this target's objects.
include src/tge/CMakeFiles/tge.dir/flags.make

src/tge/CMakeFiles/tge.dir/window.c.o: src/tge/CMakeFiles/tge.dir/flags.make
src/tge/CMakeFiles/tge.dir/window.c.o: /home/conor/Dev/gl_tut/src/tge/window.c
src/tge/CMakeFiles/tge.dir/window.c.o: src/tge/CMakeFiles/tge.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/conor/Dev/gl_tut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/tge/CMakeFiles/tge.dir/window.c.o"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/tge/CMakeFiles/tge.dir/window.c.o -MF CMakeFiles/tge.dir/window.c.o.d -o CMakeFiles/tge.dir/window.c.o -c /home/conor/Dev/gl_tut/src/tge/window.c

src/tge/CMakeFiles/tge.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tge.dir/window.c.i"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/conor/Dev/gl_tut/src/tge/window.c > CMakeFiles/tge.dir/window.c.i

src/tge/CMakeFiles/tge.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tge.dir/window.c.s"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/conor/Dev/gl_tut/src/tge/window.c -o CMakeFiles/tge.dir/window.c.s

src/tge/CMakeFiles/tge.dir/gl.c.o: src/tge/CMakeFiles/tge.dir/flags.make
src/tge/CMakeFiles/tge.dir/gl.c.o: /home/conor/Dev/gl_tut/src/tge/gl.c
src/tge/CMakeFiles/tge.dir/gl.c.o: src/tge/CMakeFiles/tge.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/conor/Dev/gl_tut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/tge/CMakeFiles/tge.dir/gl.c.o"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/tge/CMakeFiles/tge.dir/gl.c.o -MF CMakeFiles/tge.dir/gl.c.o.d -o CMakeFiles/tge.dir/gl.c.o -c /home/conor/Dev/gl_tut/src/tge/gl.c

src/tge/CMakeFiles/tge.dir/gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tge.dir/gl.c.i"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/conor/Dev/gl_tut/src/tge/gl.c > CMakeFiles/tge.dir/gl.c.i

src/tge/CMakeFiles/tge.dir/gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tge.dir/gl.c.s"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/conor/Dev/gl_tut/src/tge/gl.c -o CMakeFiles/tge.dir/gl.c.s

src/tge/CMakeFiles/tge.dir/util.c.o: src/tge/CMakeFiles/tge.dir/flags.make
src/tge/CMakeFiles/tge.dir/util.c.o: /home/conor/Dev/gl_tut/src/tge/util.c
src/tge/CMakeFiles/tge.dir/util.c.o: src/tge/CMakeFiles/tge.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/conor/Dev/gl_tut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/tge/CMakeFiles/tge.dir/util.c.o"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/tge/CMakeFiles/tge.dir/util.c.o -MF CMakeFiles/tge.dir/util.c.o.d -o CMakeFiles/tge.dir/util.c.o -c /home/conor/Dev/gl_tut/src/tge/util.c

src/tge/CMakeFiles/tge.dir/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tge.dir/util.c.i"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/conor/Dev/gl_tut/src/tge/util.c > CMakeFiles/tge.dir/util.c.i

src/tge/CMakeFiles/tge.dir/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tge.dir/util.c.s"
	cd /home/conor/Dev/gl_tut/build/src/tge && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/conor/Dev/gl_tut/src/tge/util.c -o CMakeFiles/tge.dir/util.c.s

# Object files for target tge
tge_OBJECTS = \
"CMakeFiles/tge.dir/window.c.o" \
"CMakeFiles/tge.dir/gl.c.o" \
"CMakeFiles/tge.dir/util.c.o"

# External object files for target tge
tge_EXTERNAL_OBJECTS =

src/tge/libtge.a: src/tge/CMakeFiles/tge.dir/window.c.o
src/tge/libtge.a: src/tge/CMakeFiles/tge.dir/gl.c.o
src/tge/libtge.a: src/tge/CMakeFiles/tge.dir/util.c.o
src/tge/libtge.a: src/tge/CMakeFiles/tge.dir/build.make
src/tge/libtge.a: src/tge/CMakeFiles/tge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/conor/Dev/gl_tut/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C static library libtge.a"
	cd /home/conor/Dev/gl_tut/build/src/tge && $(CMAKE_COMMAND) -P CMakeFiles/tge.dir/cmake_clean_target.cmake
	cd /home/conor/Dev/gl_tut/build/src/tge && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tge.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tge/CMakeFiles/tge.dir/build: src/tge/libtge.a
.PHONY : src/tge/CMakeFiles/tge.dir/build

src/tge/CMakeFiles/tge.dir/clean:
	cd /home/conor/Dev/gl_tut/build/src/tge && $(CMAKE_COMMAND) -P CMakeFiles/tge.dir/cmake_clean.cmake
.PHONY : src/tge/CMakeFiles/tge.dir/clean

src/tge/CMakeFiles/tge.dir/depend:
	cd /home/conor/Dev/gl_tut/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/conor/Dev/gl_tut /home/conor/Dev/gl_tut/src/tge /home/conor/Dev/gl_tut/build /home/conor/Dev/gl_tut/build/src/tge /home/conor/Dev/gl_tut/build/src/tge/CMakeFiles/tge.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tge/CMakeFiles/tge.dir/depend

