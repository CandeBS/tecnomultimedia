class Puntos {
  float x, y;
  int punto;
  Puntos (float x, float y, int punto) {
    this.x = x; 
    this.y = y;
    this.punto= punto;
  }
  void dibujar () { //Dibujo los puntos
    push();
    textSize(20);
    textAlign(CENTER);
    text("Puntos: "+punto, 100, y);
    pop();
  }
}
