#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SDL2_image::SDL2_image" for configuration ""
set_property(TARGET SDL2_image::SDL2_image APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(SDL2_image::SDL2_image PROPERTIES
  IMPORTED_IMPLIB_NOCONFIG "${_IMPORT_PREFIX}/lib/libSDL2_image.dll.a"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/SDL2_image.dll"
  )

list(APPEND _cmake_import_check_targets SDL2_image::SDL2_image )
list(APPEND _cmake_import_check_files_for_SDL2_image::SDL2_image "${_IMPORT_PREFIX}/lib/libSDL2_image.dll.a" "${_IMPORT_PREFIX}/bin/SDL2_image.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
