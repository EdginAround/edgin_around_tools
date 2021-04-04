#version 300 es

uniform mat4 uniView;

layout(location = 0) in vec2 inPosition;

void main(void) {
    gl_Position = uniView * vec4(inPosition, -1, 1);
}
