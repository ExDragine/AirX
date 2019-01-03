#version 120

#include "/lib/Frame.glsl"

varying vec3 tintColor;

void main(){
    GCOLOR_OUR = vec4(tintColor,1.0);
    GDEPTH_OUT = vec4(0.0,0.0,0.0,1.0);
}