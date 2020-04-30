#include Temperatura.glsl;

float DynamicCount(){
    Basic = cos(frameCounter%3-1)+cos((worldTime/4000)%3-1);
    if(worldTime%100 == 0){
        Ram = acos((random(0,100))%3-1);
    }
}