cmake_minimum_required(VERSION 3.15)
project(Learn_tips)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

find_package(OpenCV REQUIRED)

add_executable(learn src/multithread.cpp src/main.cpp)

target_include_directories(learn PRIVATE ${OpenCV_INCLUDE_DIRS})
target_include_directories(learn PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)