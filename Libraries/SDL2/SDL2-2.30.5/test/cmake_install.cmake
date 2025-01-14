# Install script for directory: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "E:/PROG/Libraries/SDL2/SDL2-2.30.5")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/gnu-windows/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testautomation.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testatomic.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testerror.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testthread.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testlocale.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testplatform.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testpower.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testfilesystem.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testtimer.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testver.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testqsort.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testaudioinfo.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testsurround.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testkeys.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testbounds.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/installed-tests/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testdisplayinfo.test")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/checkkeys.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/checkkeys.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/checkkeys.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/checkkeys.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/checkkeys.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/checkkeysthreads.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/checkkeysthreads.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/checkkeysthreads.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/checkkeysthreads.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/checkkeysthreads.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/loopwave.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/loopwave.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/loopwave.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/loopwave.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/loopwave.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/loopwavequeue.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/loopwavequeue.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/loopwavequeue.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/loopwavequeue.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/loopwavequeue.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testsurround.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsurround.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsurround.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsurround.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testsurround.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testresample.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testresample.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testresample.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testresample.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testresample.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testaudioinfo.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudioinfo.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudioinfo.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudioinfo.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testaudioinfo.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testautomation.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testautomation.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testautomation.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testautomation.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testautomation.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testmultiaudio.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmultiaudio.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmultiaudio.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmultiaudio.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testmultiaudio.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testaudiohotplug.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudiohotplug.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudiohotplug.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudiohotplug.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testaudiohotplug.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testaudiocapture.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudiocapture.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudiocapture.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testaudiocapture.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testaudiocapture.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testatomic.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testatomic.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testatomic.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testatomic.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testatomic.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testintersections.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testintersections.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testintersections.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testintersections.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testintersections.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testrelative.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrelative.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrelative.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrelative.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testrelative.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testhittesting.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhittesting.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhittesting.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhittesting.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testhittesting.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testdraw2.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdraw2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdraw2.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdraw2.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testdraw2.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testdrawchessboard.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdrawchessboard.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdrawchessboard.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdrawchessboard.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testdrawchessboard.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testdropfile.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdropfile.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdropfile.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdropfile.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testdropfile.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testerror.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testerror.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testerror.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testerror.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testerror.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testfile.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testfile.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testfile.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testfile.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testfile.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testgamecontroller.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgamecontroller.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgamecontroller.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgamecontroller.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testgamecontroller.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testgeometry.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgeometry.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgeometry.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgeometry.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testgeometry.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testgesture.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgesture.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgesture.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgesture.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testgesture.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testgl2.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgl2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgl2.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgl2.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testgl2.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testgles.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testgles.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testgles2.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles2.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles2.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testgles2.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testgles2_sdf.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles2_sdf.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles2_sdf.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testgles2_sdf.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testgles2_sdf.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testhaptic.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhaptic.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhaptic.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhaptic.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testhaptic.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testhotplug.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhotplug.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhotplug.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testhotplug.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testhotplug.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testrumble.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrumble.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrumble.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrumble.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testrumble.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testthread.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testthread.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testthread.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testthread.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testthread.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testiconv.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testiconv.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testiconv.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testiconv.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testiconv.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testime.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testime.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testime.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testime.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testime.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testjoystick.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testjoystick.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testjoystick.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testjoystick.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testjoystick.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testkeys.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testkeys.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testkeys.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testkeys.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testkeys.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testloadso.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testloadso.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testloadso.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testloadso.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testloadso.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testlocale.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testlocale.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testlocale.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testlocale.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testlocale.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testlock.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testlock.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testlock.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testlock.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testlock.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testmouse.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmouse.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmouse.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmouse.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testmouse.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testnative.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testnative.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testnative.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testnative.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testnative.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testoverlay2.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testoverlay2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testoverlay2.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testoverlay2.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testoverlay2.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testplatform.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testplatform.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testplatform.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testplatform.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testplatform.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testpower.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testpower.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testpower.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testpower.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testpower.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testfilesystem.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testfilesystem.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testfilesystem.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testfilesystem.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testfilesystem.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testrendertarget.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrendertarget.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrendertarget.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrendertarget.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testrendertarget.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testscale.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testscale.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testscale.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testscale.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testscale.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testsem.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsem.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsem.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsem.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testsem.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testsensor.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsensor.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsensor.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsensor.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testsensor.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testshader.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testshader.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testshader.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testshader.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testshader.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testshape.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testshape.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testshape.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testshape.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testshape.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testsprite2.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsprite2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsprite2.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testsprite2.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testsprite2.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testspriteminimal.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testspriteminimal.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testspriteminimal.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testspriteminimal.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testspriteminimal.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/teststreaming.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/teststreaming.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/teststreaming.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/teststreaming.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/teststreaming.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testtimer.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testtimer.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testtimer.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testtimer.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testtimer.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testurl.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testurl.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testurl.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testurl.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testurl.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testver.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testver.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testver.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testver.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testver.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testviewport.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testviewport.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testviewport.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testviewport.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testviewport.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testwm2.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testwm2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testwm2.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testwm2.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testwm2.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testyuv.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testyuv.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testyuv.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testyuv.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testyuv.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/torturethread.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/torturethread.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/torturethread.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/torturethread.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/torturethread.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testrendercopyex.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrendercopyex.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrendercopyex.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testrendercopyex.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testrendercopyex.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testmessage.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmessage.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmessage.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testmessage.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testmessage.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testdisplayinfo.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdisplayinfo.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdisplayinfo.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testdisplayinfo.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testdisplayinfo.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testqsort.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testqsort.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testqsort.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testqsort.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testqsort.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testbounds.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testbounds.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testbounds.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testbounds.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testbounds.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testcustomcursor.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testcustomcursor.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testcustomcursor.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testcustomcursor.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testcustomcursor.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/controllermap.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/controllermap.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/controllermap.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/controllermap.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/controllermap.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testvulkan.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testvulkan.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testvulkan.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testvulkan.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testvulkan.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE EXECUTABLE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/testoffscreen.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testoffscreen.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testoffscreen.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2/testoffscreen.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/CMakeFiles/testoffscreen.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libexec/installed-tests/SDL2" TYPE FILE FILES
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/axis.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/button.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/controllermap.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/controllermap_back.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/icon.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/moose.dat"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/sample.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/sample.wav"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testgles2_sdf_img_normal.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testgles2_sdf_img_sdf.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/testyuv.bmp"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/unifont-13.0.06.hex"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/test/utf8.txt"
    )
endif()

