#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
layout (location = 2) in vec2 aUv; // the color variable has attribute position 1
  
out vec3 ourColor; // output a color to the fragment shader
out vec2 texCoord;
uniform float value;
uniform float x_val;
uniform float y_val;

void main()
{
    vec4 pos = vec4(aPos.x + x_val, aPos.y + y_val, aPos.z, 1.0);
    gl_Position = pos;
    ourColor = pos.xyz; // set ourColor to the input color we got from the vertex data
    texCoord = aUv;
}
