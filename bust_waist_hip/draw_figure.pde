void figure (float b, float w, float h){
  
  b= b/2/PI;
  w= w/2/PI;
  h= h/2/PI;
  
  beginShape();
  vertex (0, 0);
  vertex (b, 16);
  vertex (w, 24); 
  vertex (h,32);
  vertex (0,64);
  vertex (-h,32);
  vertex (-w, 24);
  vertex (-b, 16);
  endShape(CLOSE);
  
  //for (int i=0; i<;i+=10)

}

void size (int size){
 if (size==0){   
 figure (30,22,32);
 }
 
 if (size==2){ 
 figure (32, 24.5, 35.5);
 }
 if (size==4){ 
 figure (34, 25.5, 36.5);
 }
 if (size==6){ 
 figure (34, 26.5, 37.5);
 }
 if (size==8){ 
 figure (35, 27.5, 38.5);
 }
 if (size==10){ 
 figure (36, 28.5, 39.5);
 }
 if (size==12){ 
 figure (37.5 ,30, 41);
 }
 if (size==14){ 
 figure (39, 31.5, 42.5);
 }
 if (size==16){ 
 figure (40.5, 33,44);
 }
 if (size==18){ 
 figure (42,35,44);
 }
 if (size==20){ 
 figure (44,37,46);
 }
 if (size==22){ 
 figure (46,39,48);
 }
if (size==24){ 
 figure (48,41.5,50);
 }
if (size==26){ 
 figure (50,44,52);
 }
if (size==28){ 
 figure (52,46.5,54);
 }
if (size==30){ 
 figure (54,49,56);
 }


}

