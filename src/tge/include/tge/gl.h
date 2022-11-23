#pragma once

//c libs
#include <stdbool.h>

//external libs
#include <glad/gl.h>
#include <GLFW/glfw3.h>

typedef GLuint tge_gl_Shader;


void tge_gl_load();

tge_gl_Shader tge_gl_Shader_new(const char* vertex_source_path,
                                const char* fragment_source_path);


void tge_gl_uniform1b(const tge_gl_Shader* const shader, const char* name, bool value);
void tge_gl_uniform1i(const tge_gl_Shader* const shader, const char* name, int value);
void tge_gl_uniform1f(const tge_gl_Shader* const shader, const char* name, float value);
