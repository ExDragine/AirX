#version 120

#include "/lib/Frame.glsl"

uniform sampler2D texture;

varying vec3 tintColor;
varying vec3 normal;

varying vec4 texcoord;

void main(){
    vec4 textureSample = texture2D(texture,texcoord.st);
    blockColor.rgb *= tintColor;

    GCOLOR_OUT =blockColor;
    GNORMAL_OUT = vec4(normal * 0.5 + 0.5,1.0);
}