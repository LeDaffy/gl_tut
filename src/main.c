//c libs
#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>
#include <stdbool.h>
#include <math.h>

//external libs
#include <glad/gl.h>
#include <GLFW/glfw3.h>
#include <cglm/call.h>

//tiny game engine
#include "tge/window.h"
#include "tge/gl.h"

//game files
#include "game.h"


int main()
{
    tge_Window window;
    tge_Window_new(&window, 800, 600, "LearnOpenGL");
    tge_gl_load();
    GLuint newshader = tge_gl_Shader_new("/home/conor/Dev/gl_tut/src/shaders/or.vs",
            "/home/conor/Dev/gl_tut/src/shaders/or.fs");

    // set up vertex data (and buffer(s)) and configure vertex attributes
    // ------------------------------------------------------------------
    // add a new set of vertices to form a second triangle (a total of 6 vertices); the vertex attribute configuration remains the same (still one 3-float position vector per vertex)
    float vertices[] = {
        // first triangle
         0.5f,  0.5f, 0.0f, 1.0f, 0.0f, 0.0f,
         0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f,
        -0.5f,  0.5f, 0.0f, 0.0f, 0.0f, 1.0f,
        -0.5f, -0.5f, 0.0f, 1.0f, 1.0f, 1.0f,
    }; 

    bool test = true;
    uint32_t indices[] = {
        0, 1, 2,
        1, 2, 3,
    };

    unsigned int VBO, VAO, EBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1, &EBO);
    // bind the Vertex Array Object first, then bind and set vertex buffer(s), and then configure vertex attributes(s).
    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)(3*sizeof(float)));
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);

    // note that this is allowed, the call to glVertexAttribPointer registered VBO as the vertex attribute's bound vertex buffer object so afterwards we can safely unbind
    glBindBuffer(GL_ARRAY_BUFFER, 0); 

    // You can unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens. Modifying other
    // VAOs requires a call to glBindVertexArray anyways so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
    glBindVertexArray(0); 


    // uncomment this call to draw in wireframe polygons.
    //glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);

    while (!glfwWindowShouldClose(window.glfw_window)) {
        processInput(&window);
        //update();
        //render();

        // render
        // ------
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glUseProgram(newshader);
        float timeValue = glfwGetTime();
        float x_val = cos(timeValue) / 2.0f;
        float y_val = sin(timeValue) / 2.0f;
        tge_gl_uniform1f(&newshader, "value", sin(10.0f * timeValue) * 0.5f + 0.5f);
        tge_gl_uniform1f(&newshader, "x_val", x_val);
        tge_gl_uniform1f(&newshader, "y_val", y_val);
        // draw our first triangle
        glBindVertexArray(VAO); // seeing as we only have a single VAO there's no need to bind it every time, but we'll do so to keep things a bit more organized
        //glDrawArrays(GL_TRIANGLES, 0, 3); // set the count to 6 since we're drawing 6 vertices now (2 triangles); not 3!
        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
        // glBindVertexArray(0); // no need to unbind it every time 


        glfwSwapBuffers(window.glfw_window);
        glfwPollEvents();
    }

    tge_Window_drop(&window);
    return EXIT_SUCCESS;
}
