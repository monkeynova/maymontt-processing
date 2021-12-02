void fun(){

//v=velocity//////////////////////// 
  vy+=gravity;
  vx*=frictionx;
  x+= vx;
  y+= vy;
 
//borders/////////////////////////// 
  if (y> height){//bounce at bottom
    y=height;
    vy = -vy;
    vy*=frictiony;
  }
  
  if (y<=0){//bouce at top
    y=0;
    vy=-vy;
    vy*=frictiony;
  }
  
    if (x> width){//right border
    x=width;
    vx = -vx;
    vx*=frictionx;
  }
  
  if (x<=0){//left border
    x=0;
   vx = -vx;
    vx*=frictionx;
  }
  
//solidity of rectangles////////////////  

if ((x>=0)&&(x<=100)&&(y>=250)&&(y<=270)){ //a
   vy=-vy;
   }
if ((x>=150)&&(x<=250)&&(y>=700)&&(y<=720)){ //b
   vy=-vy;
   }
if ((x>=350)&&(x<=370)&&(y>=350)&&(y<=450)){ //c
   vx=-vx;
    }
if ((x>=650)&&(x<=670)&&(y>=50)&&(y<=150)){ //d
   vx=-vx;
   }
if ((x>=650)&&(x<=750)&&(y>=350)&&(y<=370)){ //e
  vy=-vy;
   }
if ((x>=600)&&(x<=620)&&(y>=650)&&(y<=750)){ //f
   vx=-vx;
   }

//vibrating balls///////////////////////////////
 
//1
if (dist (x,y,200,100)<30){
  b1=true;
  hit.play(0);
}
//2
if (dist (x,y,200,400)<30){
  b2=true;
  hit.play(0);
}
// 3
if (dist (x,y,100,600)<30){
  b3=true;
  hit.play(0);
}
//4
if (dist (x,y,500,200)<30){
  b4=true;
  hit.play(0);
}
//5
if (dist (x,y,400,500)<30){
  b5=true;
  hit.play(0);
}
//6
if (dist (x,y,750,150)<30){
  b6=true;
  hit.play(0);
}
//7
if (dist (x,y,700,500)<30){
  b7=true;
  hit.play(0);
}
//8
if (dist (x,y,750,750)<30){
  b8=true;
  hit.play(0);
}
   
   
//the bouncing ball//////////////////////////////
 fill (0); 
  ellipse (x,y,10,10);
}

