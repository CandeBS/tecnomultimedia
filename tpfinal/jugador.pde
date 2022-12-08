class Jugador {

  int persoX, persoY;
  PImage perso;
  float x, y, ancho, alto;

  Jugador (float x, float y, float ancho, float alto) {
    this.x = x;
    this.y = y;
    this.alto = alto;
    this.ancho = ancho;
    perso = loadImage ("bruja.png");
    perso.resize(150, 130);
  }
  void dibujar() {
    image (perso, x, y);
  }
  void movperso() { 
    if (keyCode == LEFT) {
      x -=5;
    } else if (keyCode == RIGHT) {
      x +=5;
    } else if (keyCode == UP) {
      y -=5;
    } else if (keyCode == DOWN) {
      y +=5;
    }
  }
}
