int morning(){
    if(500<=worldTime<3000){
        return worldTime;
    }
}
int forenoon(){
    if(3000<=worldTime<5000){
        return worldTime;
    }
}
int noon(){
    if(5000<=worldTime<7000){
        return worldTime;
    }
}
int afternoon(){
    if(7000<=worldTime<11500){
        return worldTime;
    }
}
int evening(){
    if(11500<=worldTime<13500){
        return worldTime;
    }
}
int night(){
    if(13500<=worldTime<17000){
        return worldTime;
    }
}
int midnight(){
    if(17000<=worldTime<19000){
        return worldTime;
    }
}
int aftermidnight(){
    if(19000<=worldTime<23500){
        return worldTime;
    }
}
int dawn(){
    if(23500<=worldTime<500){
        return worldTime;
    }  
}