cmake_minimum_required(VERSION 3.5)

project(Number_systems LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


set(SOURCE_EXE src/main.cpp 
	src/EventReader.cpp 
        src/Letters.cpp
	src/Universal.cpp 
        src/WindowWraper.cpp
        src/RendererWraper.cpp
        src/calc_func.cpp
        include/EventReader.h
	include/Letters.h 
        include/Universal.h
        include/WindowWraper.h
        include/RendererWraper.h
        include/calc_func.h
)

set(HEADER_EXE
	include/EventReader.h 
	include/Letters.h 
	include/Universal.h 
        include/WindowWraper.h
        include/RendererWraper.h
        include/calc_func.h
)


add_executable(Number_systems ${SOURCE_EXE}
   )
target_include_directories(Number_systems PUBLIC include)

target_include_directories(Number_systems PUBLIC "../../Libraries/SDL2/SDL2-2.30.5/include/SDL2")
target_include_directories(Number_systems PUBLIC "../../Libraries/SDL2/SDL2-2.30.5/include-config-/SDL2")
target_include_directories(Number_systems PUBLIC "../../Libraries/SDL2/SDL2_image-2.8.2/include")

target_link_directories(Number_systems PRIVATE "../../Libraries/SDL2/SDL2-2.30.5")
target_link_directories(Number_systems PRIVATE "../../Libraries/SDL2/SDL2_image-2.8.2")
target_link_libraries(Number_systems "libSDL2main.a")
target_link_libraries(Number_systems "libSDL2.dll.a")
target_link_libraries(Number_systems "libSDL2_image.dll.a")

