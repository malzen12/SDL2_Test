# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\PROG\Libraries\SDL2\SDL2-2.30.5

# Include any dependencies generated for this target.
include test/CMakeFiles/testgles.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testgles.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testgles.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testgles.dir/flags.make

test/CMakeFiles/testgles.dir/testgles.c.obj: test/CMakeFiles/testgles.dir/flags.make
test/CMakeFiles/testgles.dir/testgles.c.obj: test/CMakeFiles/testgles.dir/includes_C.rsp
test/CMakeFiles/testgles.dir/testgles.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testgles.c
test/CMakeFiles/testgles.dir/testgles.c.obj: test/CMakeFiles/testgles.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testgles.dir/testgles.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testgles.dir/testgles.c.obj -MF CMakeFiles\testgles.dir\testgles.c.obj.d -o CMakeFiles\testgles.dir\testgles.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testgles.c

test/CMakeFiles/testgles.dir/testgles.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testgles.dir/testgles.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testgles.c > CMakeFiles\testgles.dir\testgles.c.i

test/CMakeFiles/testgles.dir/testgles.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testgles.dir/testgles.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testgles.c -o CMakeFiles\testgles.dir\testgles.c.s

# Object files for target testgles
testgles_OBJECTS = \
"CMakeFiles/testgles.dir/testgles.c.obj"

# External object files for target testgles
testgles_EXTERNAL_OBJECTS =

test/testgles.exe: test/CMakeFiles/testgles.dir/testgles.c.obj
test/testgles.exe: test/CMakeFiles/testgles.dir/build.make
test/testgles.exe: libSDL2_test.a
test/testgles.exe: libSDL2.a
test/testgles.exe: libSDL2main.a
test/testgles.exe: test/CMakeFiles/testgles.dir/linkLibs.rsp
test/testgles.exe: test/CMakeFiles/testgles.dir/objects1.rsp
test/testgles.exe: test/CMakeFiles/testgles.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testgles.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testgles.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testgles.dir/build: test/testgles.exe
.PHONY : test/CMakeFiles/testgles.dir/build

test/CMakeFiles/testgles.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testgles.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testgles.dir/clean

test/CMakeFiles/testgles.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testgles.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testgles.dir/depend

