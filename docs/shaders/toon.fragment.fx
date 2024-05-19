#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec3 color = round(texture(image, model_uv).rgb * 4.0) / 4.0;

    FragColor = vec4(color, 1.0);
}
