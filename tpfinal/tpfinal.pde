//------link al video explicativo: 
/*
Alumna: Sequeira Biagetti Candela. 
 Legajo: 91463/0
 Dibujos hechos por mi <3
 */

//Clase llamando al objeto
Juego Juego;
//Musica y sonidos
import ddf.minim.*;
Minim minim;
AudioPlayer mepegaron;
AudioPlayer algobueno;
AudioPlayer musica;


void setup() {
  size (800, 800);
  Juego = new Juego(); //Llamo a la clase mas polenta
  //Musica y sonidos en setup
  minim = new Minim(this);
  mepegaron = minim.loadFile("mepegaron.wav");
  algobueno = minim.loadFile("algobueno.wav");
  musica = minim.loadFile("musicajuego.wav");
}
void draw() {
  background (0);
  Juego.funcionar();
}
void keyPressed(){
  Juego.movTeclado();
  Juego.keyPressed();
}
