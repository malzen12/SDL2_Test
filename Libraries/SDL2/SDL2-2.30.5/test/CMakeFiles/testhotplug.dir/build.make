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
include test/CMakeFiles/testhotplug.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testhotplug.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testhotplug.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testhotplug.dir/flags.make

test/CMakeFiles/testhotplug.dir/testhotplug.c.obj: test/CMakeFiles/testhotplug.dir/flags.make
test/CMakeFiles/testhotplug.dir/testhotplug.c.obj: test/CMakeFiles/testhotplug.dir/includes_C.rsp
test/CMakeFiles/testhotplug.dir/testhotplug.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testhotplug.c
test/CMakeFiles/testhotplug.dir/testhotplug.c.obj: test/CMakeFiles/testhotplug.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testhotplug.dir/testhotplug.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testhotplug.dir/testhotplug.c.obj -MF CMakeFiles\testhotplug.dir\testhotplug.c.obj.d -o CMakeFiles\testhotplug.dir\testhotplug.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testhotplug.c

test/CMakeFiles/testhotplug.dir/testhotplug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testhotplug.dir/testhotplug.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testhotplug.c > CMakeFiles\testhotplug.dir\testhotplug.c.i

test/CMakeFiles/testhotplug.dir/testhotplug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testhotplug.dir/testhotplug.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testhotplug.c -o CMakeFiles\testhotplug.dir\testhotplug.c.s

# Object files for target testhotplug
testhotplug_OBJECTS = \
"CMakeFiles/testhotplug.dir/testhotplug.c.obj"

# External object files for target testhotplug
testhotplug_EXTERNAL_OBJECTS =

test/testhotplug.exe: test/CMakeFiles/testhotplug.dir/testhotplug.c.obj
test/testhotplug.exe: test/CMakeFiles/testhotplug.dir/build.make
test/testhotplug.exe: libSDL2_test.a
test/testhotplug.exe: libSDL2.a
test/testhotplug.exe: libSDL2main.a
test/testhotplug.exe: test/CMakeFiles/testhotplug.dir/linkLibs.rsp
test/testhotplug.exe: test/CMakeFiles/testhotplug.dir/objects1.rsp
test/testhotplug.exe: test/CMakeFiles/testhotplug.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testhotplug.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testhotplug.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testhotplug.dir/build: test/testhotplug.exe
.PHONY : test/CMakeFiles/testhotplug.dir/build

test/CMakeFiles/testhotplug.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testhotplug.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testhotplug.dir/clean

test/CMakeFiles/testhotplug.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testhotplug.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testhotplug.dir/depend

