#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

void main(){
    gl_Position = ftransform();
    texcoord = gl_MultiTexCoord0;
}