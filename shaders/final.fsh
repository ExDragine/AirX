#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

const float ambientOcclusionLevel=0.f;

#include "lib/ACES.glsl"
#include "lib/Vignette.glsl"

void main(){
    vec3 color = texture2D(gcolor,texcoord.st).rgb;
	color = Tonemap_Aces(color);
	Vignette(color);
    gl_FragColor = vec4(color.rgb,1.0f);
}