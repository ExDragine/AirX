void Vignette(inout vec3 color){
    float dist=distance(texcoord.st,vec2(.5))*2.;
    dist/=1.5142f;
    dist=pow(dist,1.1f);
    color.rgb*=1.f-dist;
}