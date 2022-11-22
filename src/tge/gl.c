#include "tge/gl.h"
#include "tge/util.h"

//c libs
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//external libs
#include <GLFW/glfw3.h>

static void check_compile_errors(unsigned int shader, const char* const type)
{
    int success;
    char infoLog[1024];
    if (!strcmp(type, "PROGRAM"))
    {
        glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
        if (!success)
        {
            glGetShaderInfoLog(shader, 1024, NULL, infoLog);
            printf("ERROR::SHADER_COMPILATION_ERROR of type: %s\n%s \n -- --------------------------------------------------- -- \n", type, infoLog);
        }
    }
    else
    {
        glGetProgramiv(shader, GL_LINK_STATUS, &success);
        if (!success)
        {
            glGetProgramInfoLog(shader, 1024, NULL, infoLog);
            printf("ERROR::SHADER_COMPILATION_ERROR of type: %s\n%s \n -- --------------------------------------------------- -- \n", type, infoLog);
        }
    }
}

void tge_gl_load()
{
    // glad: load all OpenGL function pointers
    // ---------------------------------------
    if (!gladLoadGL((GLADloadfunc)glfwGetProcAddress))
    {
        printf("Failed to initialize GLAD\n");
    }
}


tge_gl_Shader tge_gl_Shader_new(const char* vertex_source_path,
                                const char* fragment_source_path)
{
    GLuint vertex, fragment, ID;
    char* vs = tge_util_file_to_string(vertex_source_path);
    if (vs) {
        // vertex shader
        vertex = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(vertex, 1, (const GLchar**)&vs, NULL);
        glCompileShader(vertex);
        check_compile_errors(vertex, "VERTEX");

        free(vs);
        vs = NULL;
    }

    char* fs = tge_util_file_to_string(fragment_source_path);
    if (fs) {
        fragment = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(fragment, 1, (const GLchar**)&fs, NULL);
        glCompileShader(fragment);
        check_compile_errors(fragment, "FRAGMENT");
    }
    
    // shader Program
    ID = glCreateProgram();
    glAttachShader(ID, vertex);
    glAttachShader(ID, fragment);
    glLinkProgram(ID);
    check_compile_errors(ID, "PROGRAM");
    // delete the shaders as they're linked into our program now and no longer necessary
    glDeleteShader(vertex);
    glDeleteShader(fragment);

    return ID;
}
