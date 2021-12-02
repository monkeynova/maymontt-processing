void startscreen(){
  background (255,0,0); 

  
  String r = "hit all the red balls in time";
  text(r, height/2, width/2-80, 100, 100);
  
  String s = "use W for jump, A for left, and D for right to control the ball";
  text(s, height/2, width/2, 100, 100);
  
   String t = "press SPACEBAR to begin";
  text(t, height/2, width/2+80, 100, 100);
  
  vy+=gravity;
  vx*=frictionx;
  x+= vx;
  y+= vy;
  fill (0); 
  ellipse (x,y,10,10);
  if (y> height){//bounce at bottom
  y=height;
  vy = -vy;
  vy*=frictiony;
  }
}

void win(){
  background (255,0,0); 
  
  String s = "you win...this time...";
  text(s, height/2, width/2, 70, 70);
  
  String t = "press SPACEBAR to restart";
  text(t, height/2, width/2+80, 100, 100);
}

void lose(){
background (255,0,0); 
  
  String s = "you'll never win!";
  text(s, height/2, width/2, 100, 100);
  
  String t = "press SPACEBAR to restart";
  text(t, height/2, width/2+80, 100, 100);
  }

