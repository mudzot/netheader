cmake_minimum_required(VERSION 3.1)
project (libnetheader VERSION 1.69 LANGUAGES CXX)

add_library(netheader INTERFACE)

target_include_directories(netheader
INTERFACE
    $<INSTALL_INTERFACE:include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/boost>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/boost/asio/ts>
)
target_compile_features(netheader INTERFACE cxx_std_11)

