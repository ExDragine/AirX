vec3 ACESFilm(vec3 x)
{
    
    float a=2.51f;
    float b=.03f;
    float c=2.43f;
    float d=.59f;
    float e=.14f;
    vec3 r=(x*(a*x+b))/(x*(c*x+d)+e);
    
    return pow(r,vec3(1./2.232));
}
vec3 Tonemap_Aces(vec3 color){
    
    // ACES filmic tonemapper with highlight desaturation ("crosstalk").
    // Based on the curve fit by Krzysztof Narkowicz.
    // https://knarkowicz.wordpress.com/2016/01/06/aces-filmic-tone-mapping-curve/
    
    const float slope=12.f;// higher values = slower rise.
    
    // Store grayscale as an extra channel.
    vec4 x=vec4(
        // RGB
        color.r,color.g,color.b,
        // Luminosity
        (color.r*.299)+(color.g*.587)+(color.b*.114)
    );
    
    // ACES Tonemapper
    const float a=2.51f;
    const float b=.03f;
    const float c=2.43f;
    const float d=.59f;
    const float e=.14f;
    
    vec4 tonemap=clamp((x*(a*x+b))/(x*(c*x+d)+e),0.,1.);
    float t=x.a;
    
    t=t*t/(slope+t);
    
    // Return after desaturation step.
    return pow(mix(tonemap.rgb,tonemap.aaa,t),vec3(1./2.232));
}