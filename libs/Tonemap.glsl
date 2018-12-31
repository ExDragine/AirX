vec3 convertToHDR(in vec3 color){
	vec3 HDRImage;
	vec3 overExposed = color * 1.2f;
	vec3 underExposed = color / 2.0f;
	HDRImage = mix(underExposed,overExposed,color);
	return HDRImage;
}