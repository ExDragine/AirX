#version 120

uniform int worldTime;
uniform vec3 sunPosition;
uniform vec3 moonPosition;

varying vec4 texcoord;

varying vec3 lightVector;

void main(){
    gl_Position = ftransform();
    texcoord = gl_MultiTexCoord0;
    if(worldTime < 22700 || worldTime > 23250)
    {
        lightVector = normalize(sunPosition);
    }
    else{
            lightVector = normalize(moonPosition);
        }
}