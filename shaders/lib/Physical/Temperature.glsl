float temperature(vec3 BiomeType){
    float Rainfall = BiomeType.x;
    float Weather = BiomeType.y;
    float MainTemperature =BiomeType.z;
    if(0<=worldTime<12000){
        SunlightTem = pow(pow(2,log(10,2)),(-pow(worldTime,2)/2))/(sqrt(2*acos(-1)))/2;
    }
    else{
        SunlightTem = -pow(pow(2,log(10,2)),(-pow(worldTime,2)/2))/(sqrt(2*acos(-1)))/2;
    }
    if(0.8<Rainfall<=1){
        RainTem = cos(Rainfall);
    }
    Temperature = MainTemperature + SunlightTem + RainTem;
    return Temperatura;
}