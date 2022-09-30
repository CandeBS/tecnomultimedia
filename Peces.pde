class Peces{
 
  float x, y, t;
  int pezx, pezy;
  boolean drag, atun;
  
  Peces(){
   x = 200;
   y = 400;
   t= 150;
  }
  
  void actualizo(){
    //Actualizo la variable para agarrar
    if ( mousePressed ) {
      drag = true;
    } else {
      drag = false;
    }
    //Variable de atún (area para agarrar al pez)
    float distancia = dist (x,y, mouseX, mouseY );
    if (distancia < t)
    atun = true;
    else
    atun = false;
  }
  
  void draggeo(){
    //Ejecuto que se mueva con drag y el area
    if (drag && atun) {
     x = mouseX;
     y = mouseY;
    }
  }
  
  void dibujo(){
   pushStyle();
   fill(0);
   image (pez1,x,t);
   pez1.resize(150,100);
   popStyle();
  }
  
  void flechas(){
    image (pez2,pezx,pezy);
    pez2.resize(150,100);
    if (keyPressed && (key == CODED)) {
      if (keyCode == LEFT){
        pezx -=3;
      } else if (keyCode == RIGHT){
        pezx +=3;
      }
      if (keyCode == UP){
        pezy -=3;
      } else if (keyCode == DOWN){
        pezy +=3;
  }
  }
}
}
