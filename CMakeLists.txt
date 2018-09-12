add_library(netheader INTERFACE)

target_compile_definitions(netheader INTERFACE BOOST_ERROR_CODE_HEADER_ONLY)
target_include_directories(netheader INTERFACE 
    $<INSTALL_INTERFACE:include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)

