import ddf.minim.*;
Minim minim;
AudioSnippet jungle;
AudioSnippet hit;

float vy, vx, x, y, frictiony, frictionx, gravity, bh, bw;
boolean b1, b2, b3, b4, b5, b6, b7,b8;
int mode =0, stime;

void setup (){
  
smooth();
size (800,800);
background (255);
vy=0;
vx=2;
x=0;
y=0;
frictiony=.6;
frictionx=.999;
gravity = .1;
bh=50;
bw=50;
b1= false;
b2= false;
b3=false;
b4=false;
b5= false;
b6=false;
b7=false;
b8=false;
stime=millis();

  minim = new Minim(this);
  jungle = minim.loadSnippet ("jungle.wav");
  hit = minim.loadSnippet ("hit.wav");

  }



void draw (){
 if (mode==0){
 startscreen();
 }else if (mode ==1){
   board();
   fun(); 
 }else if (mode ==2){
   win(); 
 }else if (mode ==3){
   lose();
 }else if (mode==4){
   board2();
   fun(); 
 }


if ((millis()-stime >24000)&& (mode==1)){
  mode=3;

}
if ((b1== true)&&(b2== true)&&(b3==true)&&(b4== true)&&(b5== true)&&(b6==true)&&(b7==true)&&(b8==true)){
  mode=2;
}
}


void keyPressed () { //key controls. 
   
   if (key==' '){
    if(mode ==0){ 
   jungle.play(0);   
   mode=1;
   setup();
      
   }
   
   if (mode ==2){
      mode=1;
      setup();
      jungle.play(0);
   }   
   if (mode ==3){
      mode=1;
      setup();
      jungle.play(0);
  }
  }
   
   if (key=='a'){
      vx-=.2;
   }
    
   if (key=='d'){
      vx+=.2;   
}

   if (key =='w'){
      vy-=3;

}
  if (key==CODED){
    if (keyCode== UP){
       if (mode ==1){
      mode=4;
   }
  }  
 }
}

void stop (){
   jungle.close();
   minim.stop();
   super.stop();
}
