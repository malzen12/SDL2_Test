# Install script for directory: C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/libSDL2.dll.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/SDL2.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/SDL2.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/SDL2.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/gnu-windows/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/SDL2.dll")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/libSDL2main.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/libSDL2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/libSDL2_test.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake"
         "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "E:/PROG/Libraries/SDL2/SDL2-2.30.5/SDL2Config.cmake"
    "E:/PROG/Libraries/SDL2/SDL2-2.30.5/SDL2ConfigVersion.cmake"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_assert.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_atomic.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_audio.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_bits.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_blendmode.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_clipboard.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_copying.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_cpuinfo.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_egl.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_endian.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_error.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_events.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_filesystem.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_gamecontroller.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_gesture.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_guid.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_haptic.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_hidapi.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_hints.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_joystick.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_keyboard.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_keycode.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_loadso.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_locale.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_log.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_main.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_messagebox.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_metal.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_misc.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_mouse.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_mutex.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_name.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengl.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengl_glext.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengles.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengles2.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengles2_gl2.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengles2_gl2ext.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengles2_gl2platform.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_opengles2_khrplatform.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_pixels.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_platform.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_power.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_quit.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_rect.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_render.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_rwops.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_scancode.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_sensor.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_shape.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_stdinc.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_surface.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_system.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_syswm.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_assert.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_common.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_compare.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_crc32.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_font.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_fuzzer.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_harness.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_images.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_log.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_md5.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_memory.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_test_random.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_thread.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_timer.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_touch.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_types.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_version.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_video.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/SDL_vulkan.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/begin_code.h"
    "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/include/close_code.h"
    "E:/PROG/Libraries/SDL2/SDL2-2.30.5/include/SDL2/SDL_revision.h"
    "E:/PROG/Libraries/SDL2/SDL2-2.30.5/include-config-/SDL2/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "E:/PROG/Libraries/SDL2/SDL2-2.30.5/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "C:/Users/Sergey/Desktop/raw_library/SDL2-2.30.5/sdl2.m4")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/PROG/Libraries/SDL2/SDL2-2.30.5/test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "E:/PROG/Libraries/SDL2/SDL2-2.30.5/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
