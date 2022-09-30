class Focas{
  
 float x, y , t;
 
 Focas ( float x1, float y1, float t1){
     ///////??
  x= x1;
  y= y1;
  t= t1;
 }
 
  ///////??
 void dibujo(){
  pushStyle();
  rectMode( CENTER );
  image (foca1,0,47);
  image (foca2,345,450);
  popStyle();
 }
  
}
