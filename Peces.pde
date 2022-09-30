class Peces{
 
  float x, y, t, pMy = 58.9, radio = 55.8, velocidad = 3;
  int pezx, pezy, x1;
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
    float distancia = dist (x,y, mouseX, mouseY +100);
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
   pez3.resize(150,100);
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

void pezmov(){
image (pez3, pMy,320);
//pMy Pez move Y
 pMy = pMy + velocidad;
   if (pMy > width + radio){
    pMy = -radio;
  }
 
}
}
