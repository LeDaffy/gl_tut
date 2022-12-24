add_library(tge 
    window.c
    gl.c
    util.c
    )
target_include_directories(tge PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include/)
target_link_libraries(tge glad)
target_link_libraries(gl_hello tge)
