//Nouveau by: gen may-montt
//image flip by: nick lally
//idea bouncing off: the other keith peters. 

PImage feather;
PImage leaf2;
PImage bluetile;
PImage browntile;
PImage circletile;
PImage redline;
PImage leaf;
PImage flower;
PImage flower2;
PImage rose;

void setup (){
size(800,800);
  background (234,234,213);
  feather = loadImage ("feather.png");
  leaf2 = loadImage ("leaf2.png");
  bluetile= loadImage ("bluetile.png");
  circletile= loadImage ("circletile.png");
  redline= loadImage ("redline.png");
  leaf= loadImage ("leaf.png");
  flower = loadImage ("flower.png");
  browntile = loadImage ("browntile.png");
  rose= loadImage ("rose.png");
  
  
  flower2 = imageFlip (flower,"h2");
  flower = imageFlip (flower2,"v");
  browntile = imageFlip (browntile,"h2");
  bluetile= imageFlip (bluetile,"v2");
  bluetile = imageFlip (bluetile,"h2");
  feather = imageFlip (feather,"v2");
   

}

void draw (){
    //p1a1
   for (int i=0; i<width; i+=50){
    image (leaf2, i, 0, 50, 50);
    image (leaf2, i, height-50, 50, 50);
    image (leaf2, 0,i, 50,50);
    image (leaf2, width-50, i, 50, 50);
   }
   
   //pmm2
   for (int i=100; i<width-100; i+=50){
   image (bluetile, i, 100, 50, 50);
   image (bluetile, i, height-150, 50, 50);
   image (bluetile, 100 ,i, 50,50);
   image (bluetile, width-150, i, 50, 50);
   }
   
   //pma2  
   for (int i=200; i<width-200; i+=50){
         if ((i/50)%2 ==0){
   image (flower, i, 200, 50, 50);
   image (flower, i, height-250, 50, 50);
   image (flower, 200 ,i, 50,50);
   image (flower, width-250, i, 50, 50);
    
  }else{
   image (flower2, i, 200, 50, 50);
   image (flower2, i, height-250, 50, 50);
   image (flower2, 200 ,i, 50,50);
   image (flower2, width-250, i, 50, 50);
  }   
 }
   //p112
      for (int i=250; i<width-250; i+=50){
   image (rose, i, 250, 50, 50);
   image (rose, i, height-300, 50, 50);
   image (rose, 250 ,i, 50,50);
   image (rose, width-300, i, 50, 50);
   }
   
   //p111
     for (int i=300; i<width-300; i+=50){
   image (circletile, i, 300, 50, 50);
   image (circletile, i, height-350, 50, 50);
   image (circletile, 300 ,i, 50,50);
   image (circletile, width-350, i, 50, 50);
   } 
   
   //pm11
   pushMatrix();  
   translate (width/2, height/2);
   rotate (radians (45));
   translate (-width/2, -height/2);
   for (int i=150; i<width-150; i+=50){
   image (browntile, i, 150, 50, 50);
   image (browntile, i, height-200, 50, 50);
   image (browntile, 150 ,i, 50,50);
   image (browntile, width-200, i, 50, 50);
   }   
   
   //p1m1
   for (int i=50; i<width-50; i+=50){
   image (feather, i, 50, 50, 50);
   image (feather, i, height-100, 50, 50);
   image (feather, 50 ,i, 50,50);
   image (feather, width-100, i, 50, 50);
  
   }
   
   popMatrix();
     
  
    }






