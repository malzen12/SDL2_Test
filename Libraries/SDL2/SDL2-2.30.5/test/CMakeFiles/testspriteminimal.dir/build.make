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
include test/CMakeFiles/testspriteminimal.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testspriteminimal.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testspriteminimal.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testspriteminimal.dir/flags.make

test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj: test/CMakeFiles/testspriteminimal.dir/flags.make
test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj: test/CMakeFiles/testspriteminimal.dir/includes_C.rsp
test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testspriteminimal.c
test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj: test/CMakeFiles/testspriteminimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj -MF CMakeFiles\testspriteminimal.dir\testspriteminimal.c.obj.d -o CMakeFiles\testspriteminimal.dir\testspriteminimal.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testspriteminimal.c

test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testspriteminimal.dir/testspriteminimal.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testspriteminimal.c > CMakeFiles\testspriteminimal.dir\testspriteminimal.c.i

test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testspriteminimal.dir/testspriteminimal.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testspriteminimal.c -o CMakeFiles\testspriteminimal.dir\testspriteminimal.c.s

test/CMakeFiles/testspriteminimal.dir/testutils.c.obj: test/CMakeFiles/testspriteminimal.dir/flags.make
test/CMakeFiles/testspriteminimal.dir/testutils.c.obj: test/CMakeFiles/testspriteminimal.dir/includes_C.rsp
test/CMakeFiles/testspriteminimal.dir/testutils.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testutils.c
test/CMakeFiles/testspriteminimal.dir/testutils.c.obj: test/CMakeFiles/testspriteminimal.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/testspriteminimal.dir/testutils.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testspriteminimal.dir/testutils.c.obj -MF CMakeFiles\testspriteminimal.dir\testutils.c.obj.d -o CMakeFiles\testspriteminimal.dir\testutils.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testutils.c

test/CMakeFiles/testspriteminimal.dir/testutils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testspriteminimal.dir/testutils.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testutils.c > CMakeFiles\testspriteminimal.dir\testutils.c.i

test/CMakeFiles/testspriteminimal.dir/testutils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testspriteminimal.dir/testutils.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testutils.c -o CMakeFiles\testspriteminimal.dir\testutils.c.s

# Object files for target testspriteminimal
testspriteminimal_OBJECTS = \
"CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj" \
"CMakeFiles/testspriteminimal.dir/testutils.c.obj"

# External object files for target testspriteminimal
testspriteminimal_EXTERNAL_OBJECTS =

test/testspriteminimal.exe: test/CMakeFiles/testspriteminimal.dir/testspriteminimal.c.obj
test/testspriteminimal.exe: test/CMakeFiles/testspriteminimal.dir/testutils.c.obj
test/testspriteminimal.exe: test/CMakeFiles/testspriteminimal.dir/build.make
test/testspriteminimal.exe: libSDL2_test.a
test/testspriteminimal.exe: libSDL2.a
test/testspriteminimal.exe: libSDL2main.a
test/testspriteminimal.exe: test/CMakeFiles/testspriteminimal.dir/linkLibs.rsp
test/testspriteminimal.exe: test/CMakeFiles/testspriteminimal.dir/objects1.rsp
test/testspriteminimal.exe: test/CMakeFiles/testspriteminimal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable testspriteminimal.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testspriteminimal.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testspriteminimal.dir/build: test/testspriteminimal.exe
.PHONY : test/CMakeFiles/testspriteminimal.dir/build

test/CMakeFiles/testspriteminimal.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testspriteminimal.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testspriteminimal.dir/clean

test/CMakeFiles/testspriteminimal.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testspriteminimal.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testspriteminimal.dir/depend

