#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

void main(){
    vec3 color = texture2D(gcolor,texcoord.st).rgb;
    color.rgb = mix(color.rgb, vec3(0.4), vec3(1.0));
    gl_FragColor = vec4(color.rgb,1.0f);
}
