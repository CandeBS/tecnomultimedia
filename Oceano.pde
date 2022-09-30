class Oceano{

//Declaro objetos
Focas foca1, foca2;
Peces pez1;

Oceano(){
 //Inicio de los objetos llamando a los constructores
 pez1 = new Peces();
 foca1 = new Focas(100, 100, 40);
 foca2 = new Focas(300, 100,50);
}

void actualizo(){
 pez1.actualizo();
 pez1.draggeo();
}

void dibujo(){
  background (85,129,255);
  foca1.dibujo();
  foca2.dibujo();
  pez1.dibujo();
}
}
