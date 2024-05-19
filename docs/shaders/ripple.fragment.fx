#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    vec2 rip = 2.0 * model_uv - 1.0;
    float radius = length(rip);
    vec2 off = rip * (sin(radius * 30.0 - time * 5.0) + 0.5) / 60.0;
    rip = off + model_uv;

    FragColor = texture(image, rip);
}
