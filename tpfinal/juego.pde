class Juego {
  PImage pantinicio, fondojuego, pantperder, instrucciones, pantganar, pantcredi, perso;
  int pantalla = 0;
  String estado;
  int vida = 5;
  int punto;

  Jugador personaje;
  Nubes [] nube;
  Obstaculos [] obstaculo;
  Puntos puntos;

  Juego () { //Creo a este constructor y cargo las imagenes

    pantinicio = loadImage("pantinicio.jpg");
    pantinicio.resize(800, 800);
    instrucciones = loadImage("instruc.png");
    instrucciones.resize(800, 800); 
    pantganar = loadImage ("pantganar.jpg");
    pantganar.resize(800, 800);
    pantperder = loadImage ("pantperder.jpg");
    pantperder.resize(800, 800);
    fondojuego = loadImage ("fondoof.jpg");
    fondojuego.resize(800, 800);
    pantcredi = loadImage ("creditos.jpg");
    pantcredi.resize(800, 800);
    //Para un futuro: no hay que hacer tantos resizes

    //Creando las nubes y las estrellas para que puedan colisionar con la personaje
    nube = new Nubes [10];
    for (int i = 0; i <10; i++) { //Mientras i sea menor que 10 aumenta la i + 1
      nube[i]= new Nubes(random(80, 60)*i*2, random(1, 70)*i*2, 80, 80);
    }
    obstaculo = new Obstaculos [15];
    for (int i = 0; i<10; i++) { //Mientras i sea menor que 10 aumenta la i + 1
      obstaculo[i]= new Obstaculos(random(80, 60)*i*2, random(1, 70)*i*2, 80, 80);
    }
    personaje = new Jugador(height /2, width /2, 80, 80);
  }

  void funcionar() {
    //Creo las pantallas y como se pasa a cada una de ellas
    if (pantalla == 0) {
      inicio();
      musica.play();
    } 
    if (pantalla == 1) {
      pantalla = 1;
      instrucciones();
    } else if (pantalla ==2) {
      pantalla = 2;
      jueguito();
    } 
    if (punto == 30) {
      pantalla = 3;
      ganar();
    } 
    if (vida == 0) {
      pantalla = 4;
      perder();
      musica.pause();
      musica.rewind();
    } 
    if (key == 'c' || key == 'C') {
      pantalla = 5;
      creditos();
    }
  }

  void inicio() {
    //Pego la imagen del inicio
    image (pantinicio, 0, 0);
  }

  void instrucciones() {
    //Pego las instrucciones
    image (instrucciones, 0, 0);
  }

  void jueguito() {
    image (fondojuego, 0, 0);
    for (int i = 0; i<10; i++) {
      //personaje.movperso();
      personaje.dibujar();
      nube[i].dibujar ();
      nube[i].mover () ;
      obstaculo[i].dibujar ();
      obstaculo[i].mover () ;
      puntos = new Puntos (35, 25, punto);
      puntos.dibujar ();
      //Colisión positiva de la nube (da un punto), con sonido agregado
      if (nube[i].colision(personaje.x, personaje.y, personaje.ancho, personaje.alto)) {
        punto +=1;
        algobueno.play();
        algobueno.rewind();
        //Colisión negativa de la estrella (te saca vida), con sonido agregado
      } else if (obstaculo[i].colision(personaje.x, personaje.y, personaje.ancho, personaje.alto)) {
        mepegaron.play();
        mepegaron.rewind();
        vida--;
        println(vida);
      }
    }
  }
  void perder() {
    image (pantperder, 0, 0);
  }

  void ganar() {
    image (pantganar, 0, 0);
  }
  void creditos() {
    image (pantcredi, 0, 0);
  }
  void keyPressed() {
    if (key == 'i' || key == 'I' ) {
      pantalla = 1;
    }
    if (key == 'j' || key == 'J') {
      pantalla = 2;
    }
    if (key == 'c' || key == 'C') {
      pantalla =5;
      creditos();
    }
    if (key == 'r' || key == 'R') {
      reinicio();
    }
  }
  void movTeclado() {
    personaje.movperso();
  }
  void reinicio() {
    pantalla = 0;
    punto = 0;
    vida = 5 ;
  }
}
