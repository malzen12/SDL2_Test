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
include test/CMakeFiles/testyuv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/testyuv.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/testyuv.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/testyuv.dir/flags.make

test/CMakeFiles/testyuv.dir/testyuv.c.obj: test/CMakeFiles/testyuv.dir/flags.make
test/CMakeFiles/testyuv.dir/testyuv.c.obj: test/CMakeFiles/testyuv.dir/includes_C.rsp
test/CMakeFiles/testyuv.dir/testyuv.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testyuv.c
test/CMakeFiles/testyuv.dir/testyuv.c.obj: test/CMakeFiles/testyuv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/testyuv.dir/testyuv.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testyuv.dir/testyuv.c.obj -MF CMakeFiles\testyuv.dir\testyuv.c.obj.d -o CMakeFiles\testyuv.dir\testyuv.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testyuv.c

test/CMakeFiles/testyuv.dir/testyuv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testyuv.dir/testyuv.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testyuv.c > CMakeFiles\testyuv.dir\testyuv.c.i

test/CMakeFiles/testyuv.dir/testyuv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testyuv.dir/testyuv.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testyuv.c -o CMakeFiles\testyuv.dir\testyuv.c.s

test/CMakeFiles/testyuv.dir/testyuv_cvt.c.obj: test/CMakeFiles/testyuv.dir/flags.make
test/CMakeFiles/testyuv.dir/testyuv_cvt.c.obj: test/CMakeFiles/testyuv.dir/includes_C.rsp
test/CMakeFiles/testyuv.dir/testyuv_cvt.c.obj: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testyuv_cvt.c
test/CMakeFiles/testyuv.dir/testyuv_cvt.c.obj: test/CMakeFiles/testyuv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object test/CMakeFiles/testyuv.dir/testyuv_cvt.c.obj"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/testyuv.dir/testyuv_cvt.c.obj -MF CMakeFiles\testyuv.dir\testyuv_cvt.c.obj.d -o CMakeFiles\testyuv.dir\testyuv_cvt.c.obj -c C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testyuv_cvt.c

test/CMakeFiles/testyuv.dir/testyuv_cvt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/testyuv.dir/testyuv_cvt.c.i"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testyuv_cvt.c > CMakeFiles\testyuv.dir\testyuv_cvt.c.i

test/CMakeFiles/testyuv.dir/testyuv_cvt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/testyuv.dir/testyuv_cvt.c.s"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && C:\gnu-windows\bin\cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test\testyuv_cvt.c -o CMakeFiles\testyuv.dir\testyuv_cvt.c.s

# Object files for target testyuv
testyuv_OBJECTS = \
"CMakeFiles/testyuv.dir/testyuv.c.obj" \
"CMakeFiles/testyuv.dir/testyuv_cvt.c.obj"

# External object files for target testyuv
testyuv_EXTERNAL_OBJECTS =

test/testyuv.exe: test/CMakeFiles/testyuv.dir/testyuv.c.obj
test/testyuv.exe: test/CMakeFiles/testyuv.dir/testyuv_cvt.c.obj
test/testyuv.exe: test/CMakeFiles/testyuv.dir/build.make
test/testyuv.exe: libSDL2_test.a
test/testyuv.exe: libSDL2.a
test/testyuv.exe: libSDL2main.a
test/testyuv.exe: test/CMakeFiles/testyuv.dir/linkLibs.rsp
test/testyuv.exe: test/CMakeFiles/testyuv.dir/objects1.rsp
test/testyuv.exe: test/CMakeFiles/testyuv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=E:\PROG\Libraries\SDL2\SDL2-2.30.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable testyuv.exe"
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\testyuv.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/testyuv.dir/build: test/testyuv.exe
.PHONY : test/CMakeFiles/testyuv.dir/build

test/CMakeFiles/testyuv.dir/clean:
	cd /d E:\PROG\Libraries\SDL2\SDL2-2.30.5\test && $(CMAKE_COMMAND) -P CMakeFiles\testyuv.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/testyuv.dir/clean

test/CMakeFiles/testyuv.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5 C:\Users\Sergey\Desktop\raw_library\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5 E:\PROG\Libraries\SDL2\SDL2-2.30.5\test E:\PROG\Libraries\SDL2\SDL2-2.30.5\test\CMakeFiles\testyuv.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/testyuv.dir/depend

