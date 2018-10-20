#version 120

varying vec3 tintcolor;
varying vec3 normal;

varying vec4 texcoord;

void main(){
    gl_Position = ftransform();
    texcoord = gl_MultiTexCoord0;
    tintcolor = gl_Color.rgb;
    normal = normalize(gl_NormalMatrix * gl_Normal);
}