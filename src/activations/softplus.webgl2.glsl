#version 300 es
precision mediump float;

in vec2 outTex;
uniform sampler2D x;
out vec4 outColor;

void main() {
  outColor = log(1.0 + exp(texture(x, vec2(outTex.x, outTex.y))));
}
