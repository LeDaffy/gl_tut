#include "tge/window.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
static void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and 
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}

void say_hello()
{
    printf("Hello World\n");
}


int tge_Window_new(tge_Window* self,
        uint_fast16_t width,
        uint_fast16_t height,
        char* name)
{
    //init members
    self->width = width;
    self->height = height;
    strcpy(self->name, name);

    //init glfw
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    //create GLFWwindow
    self->glfw_window = glfwCreateWindow(self->height, self->width, self->name, NULL, NULL);
    
    if (self->glfw_window == NULL)
    {
        printf("Failed to create GLFW window");
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(self->glfw_window);
    glfwSetFramebufferSizeCallback(self->glfw_window, framebuffer_size_callback);

    return 0;
}

int tge_Window_drop(tge_Window* self)
{
    glfwDestroyWindow(self->glfw_window);
    return 0;
}
