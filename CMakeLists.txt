cmake_minimum_required(VERSION 3.28)
project(cpp-template LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_COMPILER clang++)
set(EXEC_NAME main)

add_executable(${EXEC_NAME} src/main.cpp)
target_include_directories(${EXEC_NAME} PUBLIC include/)
target_include_directories(${EXEC_NAME} PRIVATE include/internal)
