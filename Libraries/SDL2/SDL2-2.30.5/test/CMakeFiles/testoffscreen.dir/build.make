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
include test/CMakeFiles/testoffscreen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testoffscreen.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testoffscreen.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testoffscreen.dir/flags.make

test/CMakeFiles/testoffscreen.dir/testoffscreen.c.obj: test/CMakeFiles/testoffscreen.dir/flags.make
test/CMakeFiles/testoffscreen.dir/testoffscreen.c.obj: test/CMakeFiles/testoffscreen.dir/includes_C.rsp
test/CMakeFiles/testoffscreen.dir/testoffscreen.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testoffscreen.c
test/CMakeFiles/testoffscreen.dir/testoffscreen.c.obj: test/CMakeFiles/testoffscreen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testoffscreen.dir/testoffscreen.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testoffscreen.dir/testoffscreen.c.obj -MF CMakeFiles\testoffscreen.dir\testoffscreen.c.obj.d -o CMakeFiles\testoffscreen.dir\testoffscreen.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testoffscreen.c

test/CMakeFiles/testoffscreen.dir/testoffscreen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testoffscreen.dir/testoffscreen.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testoffscreen.c > CMakeFiles\testoffscreen.dir\testoffscreen.c.i

test/CMakeFiles/testoffscreen.dir/testoffscreen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testoffscreen.dir/testoffscreen.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testoffscreen.c -o CMakeFiles\testoffscreen.dir\testoffscreen.c.s

# Object files for target testoffscreen
testoffscreen_OBJECTS = \
"CMakeFiles/testoffscreen.dir/testoffscreen.c.obj"

# External object files for target testoffscreen
testoffscreen_EXTERNAL_OBJECTS =

test/testoffscreen.exe: test/CMakeFiles/testoffscreen.dir/testoffscreen.c.obj
test/testoffscreen.exe: test/CMakeFiles/testoffscreen.dir/build.make
test/testoffscreen.exe: libSDL2_test.a
test/testoffscreen.exe: libSDL2.a
test/testoffscreen.exe: libSDL2main.a
test/testoffscreen.exe: test/CMakeFiles/testoffscreen.dir/linkLibs.rsp
test/testoffscreen.exe: test/CMakeFiles/testoffscreen.dir/objects1.rsp
test/testoffscreen.exe: test/CMakeFiles/testoffscreen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testoffscreen.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testoffscreen.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testoffscreen.dir/build: test/testoffscreen.exe
.PHONY : test/CMakeFiles/testoffscreen.dir/build

test/CMakeFiles/testoffscreen.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testoffscreen.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testoffscreen.dir/clean

test/CMakeFiles/testoffscreen.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testoffscreen.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testoffscreen.dir/depend

