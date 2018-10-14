#version 120

varying vec3 tintcolor;

varying vec4 texcoord;

void main(){
    gl_Position = ftransform();
    texcoord = gl_MultiTexCoord0;
    tintcolor = gl_Color.rgb;
}