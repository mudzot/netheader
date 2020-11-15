cmake_minimum_required(VERSION 3.1)
project (libnetheader VERSION 1.74 LANGUAGES CXX)

add_library(netheader INTERFACE)

target_include_directories(netheader
INTERFACE
    $<INSTALL_INTERFACE:include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/boost>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include/boost/asio/ts>
)
target_compile_definitions(netheader INTERFACE BOOST_ASIO_DISABLE_BOOST_REGEX=1 BOOST_DATE_TIME_NO_LIB=1)
target_compile_features(netheader INTERFACE cxx_std_14)

