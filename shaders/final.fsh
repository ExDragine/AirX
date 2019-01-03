#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

//This is Tonemap
vec3 toTonemap(in vec3 color){
	vec3 Tonemap;
	vec3 overExposed = color * 1.0f;
	vec3 underExposed = color / 1.8f;
	Tonemap = mix(underExposed,overExposed,color);
	return Tonemap;
}
void Vignette(inout vec3 color){
	float dist = distance(texcoord.st,vec2(0.5)) * 2.0;
	dist /= 1.5142f;
	dist = pow(dist,1.1f);
	color.rgb *= 1.05f - dist;
}
void main(){
    vec3 color = texture2D(gcolor,texcoord.st).rgb;
	color = toTonemap(color);
	Vignette(color);
    gl_FragColor = vec4(color.rgb,1.0f);
}