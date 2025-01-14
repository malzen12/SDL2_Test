cmake_minimum_required(VERSION 3.5)

project(UI_Creator LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


set(SOURCE_EXE src/main.cpp
    src/BaseBox.cpp
    src/BaseTextBox.cpp
    src/Button.cpp
    src/ColorBox.cpp
    src/EventReader.cpp
    src/Font.cpp
    src/InputTextBox.cpp
    src/IRenderable.cpp
    src/IScrollable.cpp
    src/MultipleOptionChoise.cpp
    src/OneOptionChoise.cpp
    src/Scroll.cpp
    src/Switcher.cpp
    src/TextBox.cpp
    src/Universal.cpp
    include/BaseBox.h
    include/BaseTextBox.h
    include/Button.h
    include/ColorBox.h
    include/EventReader.h
    include/Font.h
    include/InputTextBox.h
    include/IRenderable.h
    include/IScrollable.h
    include/MultipleOptionChoise.h
    include/OneOptionChoise.h
    include/Scroll.h
    include/Switcher.h
    include/TextBox.h
    include/Universal.h
)

set(HEADER_EXE
    include/BaseBox.h
    include/BaseTextBox.h
    include/Button.h
    include/ColorBox.h
    include/EventReader.h
    include/Font.h
    include/InputTextBox.h
    include/IRenderable.h
    include/IScrollable.h
    include/MultipleOptionChoise.h
    include/OneOptionChoise.h
    include/Scroll.h
    include/Switcher.h
    include/TextBox.h
    include/Universal.h

)


add_executable(UI_Creator ${SOURCE_EXE})
target_include_directories(UI_Creator PUBLIC include)

target_include_directories(UI_Creator PUBLIC "../../Libraries/SDL2/SDL2-2.30.5/include/SDL2")
target_include_directories(UI_Creator PUBLIC "../../Libraries/SDL2/SDL2-2.30.5/include-config-/SDL2")
target_include_directories(UI_Creator PUBLIC "../../Libraries/SDL2/SDL2_image-2.8.2/include")

target_link_directories(UI_Creator PRIVATE "../../Libraries/SDL2/SDL2-2.30.5")
target_link_directories(UI_Creator PRIVATE "../../Libraries/SDL2/SDL2_image-2.8.2")
target_link_libraries(UI_Creator "libSDL2main.a")
target_link_libraries(UI_Creator "libSDL2.dll.a")
target_link_libraries(UI_Creator "libSDL2_image.dll.a")


set(TEST_EXE
    test/BaseBox_test.cpp
    test/BaseTextBox_test.cpp
    test/decay.h
    test/MockRender.h
    test/Font_test.cpp
    test/main_test.cpp
    test/Point_test.cpp
    test/TextBox_test.cpp
    test/Button_test.cpp
    test/InputTextBox_test.cpp
    test/Switcher_test.cpp
    test/ColorBox_test.cpp
    test/OneOptionChoise_test.cpp
)


set(SOURCE_WITHOUT_MAIN_EXE
    src/BaseBox.cpp
    src/BaseTextBox.cpp
    src/Button.cpp
    src/ColorBox.cpp
    src/EventReader.cpp
    src/Font.cpp
    src/InputTextBox.cpp
    src/IRenderable.cpp
    src/IScrollable.cpp
    src/MultipleOptionChoise.cpp
    src/OneOptionChoise.cpp
    src/Scroll.cpp
    src/Switcher.cpp
    src/TextBox.cpp
    src/Universal.cpp
)

add_executable(UI_Creator_test ${TEST_EXE} ${SOURCE_WITHOUT_MAIN_EXE})
target_include_directories(UI_Creator_test PRIVATE include)
target_include_directories(UI_Creator_test PRIVATE scr)
target_include_directories(UI_Creator_test PRIVATE test)

target_include_directories(UI_Creator_test PUBLIC "../../Libraries/SDL2/SDL2-2.30.5/include/SDL2")
target_include_directories(UI_Creator_test PUBLIC "../../Libraries/SDL2/SDL2-2.30.5/include-config-/SDL2")
target_include_directories(UI_Creator_test PUBLIC "../../Libraries/SDL2/SDL2_image-2.8.2/include")

target_link_directories(UI_Creator_test PRIVATE "../../Libraries/SDL2/SDL2-2.30.5")
target_link_directories(UI_Creator_test PRIVATE "../../Libraries/SDL2/SDL2_image-2.8.2")
target_link_libraries(UI_Creator_test "libSDL2main.a")
target_link_libraries(UI_Creator_test "libSDL2.dll.a")
target_link_libraries(UI_Creator_test "libSDL2_image.dll.a")

target_include_directories(UI_Creator_test PUBLIC "../../Libraries/google_test/1.14.0/include")
#target_include_directories(UI_Creator_test PUBLIC "../../Libraries/google_test/1.14.0/include/gtest")
#target_include_directories(UI_Creator_test PUBLIC "../../Libraries/google_test/1.14.0/include/gmock")

target_link_directories(UI_Creator_test PRIVATE "../../Libraries/google_test/1.14.0/lib")
target_link_libraries(UI_Creator_test "libgtest_main.dll.a")
target_link_libraries(UI_Creator_test "libgtest.dll.a")
target_link_libraries(UI_Creator_test "libgmock_main.dll.a")
target_link_libraries(UI_Creator_test "libgmock.dll.a")
