/*---This file most build by Eplor---*/
/*-------------Sampler2D---------------*/
uniform sampler2D composite;

uniform sampler2D colortex0;
uniform sampler2D colortex1;
uniform sampler2D colortex2;
uniform sampler2D colortex3;
uniform sampler2D colortex4;
uniform sampler2D colortex5;

uniform sampler2D gaux1;
uniform sampler2D gaux2;
uniform sampler2D gaux3;
uniform sampler2D gaux4;

uniform sampler2D gcolor;
uniform sampler2D gnormal;
uniform sampler2D gdepth;

uniform sampler2D gdepthtex;
uniform sampler2D depthtex0;
uniform sampler2D depthtex1;
uniform sampler2D noisetex;

uniform sampler2D shadow;
uniform sampler2D shadowtex0;
uniform sampler2D shadowtex1;
uniform sampler2D shadowcolor0;
uniform sampler2D shadowcolor1;
/*-------------------------------------*/

/*----------------Float----------------*/
uniform float far;
uniform float near;
uniform float viewWidth;
uniform float viewHeight;
uniform float aspectRatio;

uniform float wetness;
uniform float rainStrength;
uniform float centerDepthSmooth;

uniform float frameTimeCounter;
/*-------------------------------------*/

/*-----------------Vec-----------------*/
uniform ivec2 eyeBrightnessSmooth;
uniform ivec2 eyeBrightness;

uniform vec3 sunPosition;
uniform vec3 moonPosition;
uniform vec3 upPosition;
uniform vec3 shadowLightPosition;
uniform vec3 upVec;

uniform vec3 cameraPosition;
uniform vec3 previousCameraPosition;
/*-------------------------------------*/

/*-----------------Int-----------------*/
uniform int moonPhase;

uniform int frameTime;
uniform int frameCounter;
/*-------------------------------------*/

/*----------------Mat------------------*/
uniform mat4 shadowModelView;
uniform mat4 shadowProjection;

uniform mat4 gbufferPreviousModelView;
uniform mat4 gbufferModelView;
uniform mat4 gbufferModelViewInverse;
uniform mat4 gbufferPreviousProjection;
uniform mat4 gbufferProjection;
uniform mat4 gbufferProjectionInverse;
/*-------------------------------------*/

/*----------------Bool-----------------*/
uniform bool isEyeInWater;
/*-------------------------------------*/

const int RGBA16 = 1;
const int gcolorFormat = RGBA16;

#define GCOLOR_OUT gl_FragData[0]
#define GDEPTH_OUT gl_FragData[1]
#define GNORMAL_OUT gl_FraData[2]

vec3 getAlbedo(in vec2 coord){
    return texture2D(gcolor,coord).rgb;
}
vec3 getNormal(in vec2 coord){
    return texture2D(gnormal,coord).rgb * 2.0 - 1.0;
}
float getEmission(in vec2 coord){
    return texture2D(gdepth,coord).a;
}
