class Obstaculos {
  int obs = 10; //Número de obstaculos antes que se repitan
  int tam;
  PImage estrella;
  float x, y, ancho, alto;

  float [] vel = new float [obs]; //Da la velocidad
  float [][] pos = new float [obs][2]; // La posición

  Obstaculos (float x, float y, float ancho, float alto) { //Constructor
    this.x = x;
    this.y = y;
    this.alto = alto;
    this.ancho = ancho;
    estrella = loadImage("estrella.png");
  }
  void mover() {
    x = x+3;
    //Para que se repita
    if (x >= width + 50) {
      x=-50;
    }
  }
  void dibujar() {
    image(estrella, x, y); //dibujo de la estrella
  }

  boolean colision(float posX_, float posY_, float ancho_, float alto_) {
    if (y-alto/2 < posY_+alto_/2 &&
      y+alto/2 > posY_-alto_/2 &&
      x-ancho/2 < posX_-ancho_/2 &&
      x+ancho/2 > posX_-ancho_/2) {
      y= -50;
      x= random (0, 600);
      return true;
    } else {
      return false;
    }
  }
}

//Ver por donde van los enemigos, no pasan por el medio
