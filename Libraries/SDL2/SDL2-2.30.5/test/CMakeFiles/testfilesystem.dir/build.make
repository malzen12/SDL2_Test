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
include test/CMakeFiles/testfilesystem.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testfilesystem.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testfilesystem.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testfilesystem.dir/flags.make

test/CMakeFiles/testfilesystem.dir/testfilesystem.c.obj: test/CMakeFiles/testfilesystem.dir/flags.make
test/CMakeFiles/testfilesystem.dir/testfilesystem.c.obj: test/CMakeFiles/testfilesystem.dir/includes_C.rsp
test/CMakeFiles/testfilesystem.dir/testfilesystem.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testfilesystem.c
test/CMakeFiles/testfilesystem.dir/testfilesystem.c.obj: test/CMakeFiles/testfilesystem.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testfilesystem.dir/testfilesystem.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testfilesystem.dir/testfilesystem.c.obj -MF CMakeFiles\testfilesystem.dir\testfilesystem.c.obj.d -o CMakeFiles\testfilesystem.dir\testfilesystem.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testfilesystem.c

test/CMakeFiles/testfilesystem.dir/testfilesystem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testfilesystem.dir/testfilesystem.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testfilesystem.c > CMakeFiles\testfilesystem.dir\testfilesystem.c.i

test/CMakeFiles/testfilesystem.dir/testfilesystem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testfilesystem.dir/testfilesystem.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testfilesystem.c -o CMakeFiles\testfilesystem.dir\testfilesystem.c.s

# Object files for target testfilesystem
testfilesystem_OBJECTS = \
"CMakeFiles/testfilesystem.dir/testfilesystem.c.obj"

# External object files for target testfilesystem
testfilesystem_EXTERNAL_OBJECTS =

test/testfilesystem.exe: test/CMakeFiles/testfilesystem.dir/testfilesystem.c.obj
test/testfilesystem.exe: test/CMakeFiles/testfilesystem.dir/build.make
test/testfilesystem.exe: libSDL2_test.a
test/testfilesystem.exe: libSDL2.a
test/testfilesystem.exe: libSDL2main.a
test/testfilesystem.exe: test/CMakeFiles/testfilesystem.dir/linkLibs.rsp
test/testfilesystem.exe: test/CMakeFiles/testfilesystem.dir/objects1.rsp
test/testfilesystem.exe: test/CMakeFiles/testfilesystem.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable testfilesystem.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testfilesystem.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testfilesystem.dir/build: test/testfilesystem.exe
.PHONY : test/CMakeFiles/testfilesystem.dir/build

test/CMakeFiles/testfilesystem.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testfilesystem.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testfilesystem.dir/clean

test/CMakeFiles/testfilesystem.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testfilesystem.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testfilesystem.dir/depend

