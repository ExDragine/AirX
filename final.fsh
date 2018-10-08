#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

void main(){
    vec3 color = texture2D(gcolor,texcoord.st).rgb;
    color.rgb = mix(color.rgb, vec3(0.4), vec3(1.0));
    #ifdef COLOR_BOOST
    color.r = (color.r * 1.3) + (color.g + color.b) * (-0.1);
    color.g = (color.g * 1.3) + (color.r + color.b) * (-0.1);
    color.b = (color.b * 1.3) + (color.r + color.g) * (-0.1);
    #end if
    gl_FragColor = vec4(color.rgb,1.0f);
}
