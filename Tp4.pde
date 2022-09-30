//Dibujitos hechos por @Mahoukarp
// --------------------------------Link video youtube : https://youtu.be/bIhJzppzlnY  --------------------------------
//Clase llamando al objeto
Oceano oceanito;
Peces pececitos;

PImage foca1;
PImage foca2;
PImage pez1;
PImage pez2;
PImage pez3;
int pezx, pezy;

void setup (){
  oceanito= new Oceano();
  pececitos= new Peces();
  
  size (600,600);
  
  //Inserto imagenes
   foca1 = loadImage ("foca1.png");
   foca2 = loadImage ("foca2.png");
   pez1 = loadImage ("pez1.png");
   pez2 = loadImage ("pez2.png");
   pez3 = loadImage ("pez3.png");
}

void draw(){
  oceanito.actualizo();
  oceanito.dibujo();
  pececitos.flechas();
  pececitos.pezmov();
}
