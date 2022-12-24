add_library(glad ${CMAKE_CURRENT_SOURCE_DIR}/glad/src/gl.c)
target_include_directories(glad PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/glad/include/)


add_library(stb_image ${CMAKE_CURRENT_SOURCE_DIR}/stb_image/stb_image.c)
target_include_directories(stb_image PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/stb_image/include/)

target_link_libraries(gl_hello glad glfw stb_image)

