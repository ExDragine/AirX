#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

void main(){
    vec3 color = texture2D(gcolor,texcoord.st).rgb;
    color.rgb = color.rgb * 1.1;
    gl_FragColor = vec4(color.rgb,1.0f);
}