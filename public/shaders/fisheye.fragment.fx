#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;

// Output
out vec4 FragColor;

void main() {
    vec2 fish;
    fish.x = model_uv.x * 2.0 - 1.0;
    fish.y = model_uv.y * 2.0 - 1.0;
    float theta = atan(fish.y, fish.x);
    float radius = pow(length(fish), 1.5);
    fish.x = 0.5 * (radius * cos(theta) + 1.0);
    fish.y = 0.5 * (radius * sin(theta) + 1.0);

    FragColor = texture(image, fish);
}
