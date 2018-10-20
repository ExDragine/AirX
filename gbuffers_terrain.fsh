#version 120

#define GCOLOR_OUT gl_FragData[0]

uniform sampler2D texture;

varying vec3 tintcolor;
varying vec3 normal;

varying vec4 texcoord;

void main(){
    vec4 blockColor = texture2D(texture,texcoord.st);
    blockColor.rgb = tintcolor;

    GCOLOR_OUT = blockColor;
    gl_FragData[1] = vec4(normal,1.0);
}