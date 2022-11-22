#include "game.h"

#include <stdbool.h>

#include <GLFW/glfw3.h>


void processInput(tge_Window* self)
{
    if(glfwGetKey(self->glfw_window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(self->glfw_window, true);
    return;
}
void update()
{

    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
    return;
}
void render()
{

}
