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
include test/CMakeFiles/testgl2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testgl2.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testgl2.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testgl2.dir/flags.make

test/CMakeFiles/testgl2.dir/testgl2.c.obj: test/CMakeFiles/testgl2.dir/flags.make
test/CMakeFiles/testgl2.dir/testgl2.c.obj: test/CMakeFiles/testgl2.dir/includes_C.rsp
test/CMakeFiles/testgl2.dir/testgl2.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testgl2.c
test/CMakeFiles/testgl2.dir/testgl2.c.obj: test/CMakeFiles/testgl2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testgl2.dir/testgl2.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testgl2.dir/testgl2.c.obj -MF CMakeFiles\testgl2.dir\testgl2.c.obj.d -o CMakeFiles\testgl2.dir\testgl2.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testgl2.c

test/CMakeFiles/testgl2.dir/testgl2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testgl2.dir/testgl2.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testgl2.c > CMakeFiles\testgl2.dir\testgl2.c.i

test/CMakeFiles/testgl2.dir/testgl2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testgl2.dir/testgl2.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testgl2.c -o CMakeFiles\testgl2.dir\testgl2.c.s

# Object files for target testgl2
testgl2_OBJECTS = \
"CMakeFiles/testgl2.dir/testgl2.c.obj"

# External object files for target testgl2
testgl2_EXTERNAL_OBJECTS =

test/testgl2.exe: test/CMakeFiles/testgl2.dir/testgl2.c.obj
test/testgl2.exe: test/CMakeFiles/testgl2.dir/build.make
test/testgl2.exe: libSDL2_test.a
test/testgl2.exe: libSDL2.a
test/testgl2.exe: libSDL2main.a
test/testgl2.exe: test/CMakeFiles/testgl2.dir/linkLibs.rsp
test/testgl2.exe: test/CMakeFiles/testgl2.dir/objects1.rsp
test/testgl2.exe: test/CMakeFiles/testgl2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testgl2.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testgl2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testgl2.dir/build: test/testgl2.exe
.PHONY : test/CMakeFiles/testgl2.dir/build

test/CMakeFiles/testgl2.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testgl2.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testgl2.dir/clean

test/CMakeFiles/testgl2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testgl2.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testgl2.dir/depend

