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
include test/CMakeFiles/testmultiaudio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testmultiaudio.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testmultiaudio.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testmultiaudio.dir/flags.make

test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj: test/CMakeFiles/testmultiaudio.dir/flags.make
test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj: test/CMakeFiles/testmultiaudio.dir/includes_C.rsp
test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testmultiaudio.c
test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj: test/CMakeFiles/testmultiaudio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj -MF CMakeFiles\testmultiaudio.dir\testmultiaudio.c.obj.d -o CMakeFiles\testmultiaudio.dir\testmultiaudio.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testmultiaudio.c

test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testmultiaudio.dir/testmultiaudio.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testmultiaudio.c > CMakeFiles\testmultiaudio.dir\testmultiaudio.c.i

test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testmultiaudio.dir/testmultiaudio.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testmultiaudio.c -o CMakeFiles\testmultiaudio.dir\testmultiaudio.c.s

test/CMakeFiles/testmultiaudio.dir/testutils.c.obj: test/CMakeFiles/testmultiaudio.dir/flags.make
test/CMakeFiles/testmultiaudio.dir/testutils.c.obj: test/CMakeFiles/testmultiaudio.dir/includes_C.rsp
test/CMakeFiles/testmultiaudio.dir/testutils.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testutils.c
test/CMakeFiles/testmultiaudio.dir/testutils.c.obj: test/CMakeFiles/testmultiaudio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/testmultiaudio.dir/testutils.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testmultiaudio.dir/testutils.c.obj -MF CMakeFiles\testmultiaudio.dir\testutils.c.obj.d -o CMakeFiles\testmultiaudio.dir\testutils.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testutils.c

test/CMakeFiles/testmultiaudio.dir/testutils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testmultiaudio.dir/testutils.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testutils.c > CMakeFiles\testmultiaudio.dir\testutils.c.i

test/CMakeFiles/testmultiaudio.dir/testutils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testmultiaudio.dir/testutils.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testutils.c -o CMakeFiles\testmultiaudio.dir\testutils.c.s

# Object files for target testmultiaudio
testmultiaudio_OBJECTS = \
"CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj" \
"CMakeFiles/testmultiaudio.dir/testutils.c.obj"

# External object files for target testmultiaudio
testmultiaudio_EXTERNAL_OBJECTS =

test/testmultiaudio.exe: test/CMakeFiles/testmultiaudio.dir/testmultiaudio.c.obj
test/testmultiaudio.exe: test/CMakeFiles/testmultiaudio.dir/testutils.c.obj
test/testmultiaudio.exe: test/CMakeFiles/testmultiaudio.dir/build.make
test/testmultiaudio.exe: libSDL2_test.a
test/testmultiaudio.exe: libSDL2.a
test/testmultiaudio.exe: libSDL2main.a
test/testmultiaudio.exe: test/CMakeFiles/testmultiaudio.dir/linkLibs.rsp
test/testmultiaudio.exe: test/CMakeFiles/testmultiaudio.dir/objects1.rsp
test/testmultiaudio.exe: test/CMakeFiles/testmultiaudio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable testmultiaudio.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testmultiaudio.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testmultiaudio.dir/build: test/testmultiaudio.exe
.PHONY : test/CMakeFiles/testmultiaudio.dir/build

test/CMakeFiles/testmultiaudio.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testmultiaudio.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testmultiaudio.dir/clean

test/CMakeFiles/testmultiaudio.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testmultiaudio.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testmultiaudio.dir/depend

