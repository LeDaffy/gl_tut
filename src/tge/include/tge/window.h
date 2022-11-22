/**
 * @file TGE windowing header
 * @brief Contains windowing related functions for TGE
 */
#pragma once

#include <GLFW/glfw3.h>


void say_hello();


/**
 * @brief Window struct
 */
typedef struct tge_Window {
    uint_fast16_t width, height;
    char name[256];
    GLFWwindow* glfw_window;
} tge_Window;


int tge_Window_new(tge_Window* self,
        uint_fast16_t width,
        uint_fast16_t height,
        char* name);
int tge_Window_drop(tge_Window* self);
