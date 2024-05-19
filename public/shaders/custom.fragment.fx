#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform sampler2D voronoi;

// Output
out vec4 FragColor;

void main() {
    vec2 flipped = vec2(model_uv.x, 1.0 - model_uv.y);
    vec4 voron = texture(voronoi, flipped);
    vec2 uv; 
    uv.x = voron.x;
    uv.y = voron.y;
    FragColor = texture(image, uv);
}
