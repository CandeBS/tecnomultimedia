class Nubes {
  int nub = 10; //Número de obstaculos antes que se repitan
  int tam;
  PImage nubecita;
  float x, y, ancho, alto;

  float [] vel = new float [nub]; //Da la velocidad
  float [][] pos = new float [nub][2]; // La posición

  Nubes (float x, float y, float ancho, float alto) { //Constructor
    this.x = x;
    this.y = y;
    this.alto = alto;
    this.ancho = ancho;
    nubecita = loadImage("nubecita.png");
  }
  void mover() {
    x = x+3;
    //Para que se repita
    if (x >= width + 50) {
      x=-50;
    }
  }
  void dibujar() {
    image(nubecita, x, y); //dibujo de la nube
  }

  boolean colision(float posX_, float posY_, float ancho_, float alto_) {
    if (y-alto/2 < posY_+alto_/2 &&
      y+alto/2 > posY_-alto_/2 &&
      x-ancho/2 < posX_-ancho_/2 &&
      x+ancho/2 > posX_-ancho_/2) {
      y= random (0,750);
      x= 0;
      return true;
    } else {
      return false;
    }
  }
}
