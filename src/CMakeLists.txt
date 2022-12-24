target_include_directories(gl_hello PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/)

add_subdirectory(tge)
add_subdirectory(libs)


target_link_libraries(gl_hello glfw GL cglm m)


