cmake_minimum_required(VERSION 2.8.11)
project(LAB)

add_library(lib STATIC hello.cpp)
add_executable(hello hello.cpp)

