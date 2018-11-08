#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

/*
#ifdef COLOR_BOOST
   color.r = (color.r * 1.3) + (color.g + color.b) * (-0.1);
   color.g = (color.g * 1.3) + (color.r + color.b) * (-0.1);
   color.b = (color.b * 1.3) + (color.r + color.g) * (-0.1);
#end if
*/

void main(){
    gl_Position = ftransform();
    texcoord = gl_MultiTexCoord0;
}