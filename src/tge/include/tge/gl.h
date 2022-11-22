#pragma once

//external libs
#include <glad/gl.h>
#include <GLFW/glfw3.h>

typedef GLuint tge_gl_Shader;


void tge_gl_load();

tge_gl_Shader tge_gl_Shader_new(const char* vertex_source_path,
                                const char* fragment_source_path);

