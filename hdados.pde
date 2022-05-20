import ddf.minim.*;

//Variables
String a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, aa, ab, ac, ad,ae;
PImage fondo;
PImage abeja;
PImage mariposa;
PImage mariquita;
PImage mari;
PFont fuente;
int mariposa2;
int x1 = 20;
int x2 = 668;
int ax = 630;
int ay = 320;

//Musiculi
Minim song;
AudioSample sound;

void setup(){
  size (800,530);
  background (0,0,0);
 fuente = createFont ("DK Combustible.otf",150);
 textFont(fuente);
  textSize(50);
  fill (0);
  noCursor();
  //Canción
  song = new Minim(this);
  sound = song.loadSample("song.mp3",512);
  
  //Texto
  a = "Producer";
  b = "Kelly Crews";
  c = "Story editors";
  d = "Craig Lewis";
  e = "Merriwether Williams";
  f = "Staff writer";
  g = "Tim McKeon";
  h = "Supervising director";
  i = "Larry Leichliter";
  j = "Sheet timing";
  k = "Russell Calabrese";
  l = "Don Judge";
  m = "Gordon Kent";
  n = "Christine Kolosov";
  o = "Mike Lyman";
  p = "Agradecimientos especiales a";
  q = "David Bedoian";
  r = "quien me ayudó a cargar bien las imagenes";
  s = "Trabajo hecho por Sequeira Biagetti Candela";
  t = "Voices";
  u = "Finn de Ezpeleta       Lucas Cabrejos";
  v = "Jake            Simon Da Silva";
  w = "Dulce Princesa        Paula Torres";
  x = "Princesa Grumosa       Candela Biagetti";
  y = "Marceline          Valentina Triolo";
  z = "Arcoiris         Juliana Rojas";
  aa = "Limonagrio 1y2        Jere y Jere";
  ab = "Tronquitos          Clara Ponz Ruiz";
  ac = "Rey Helado         Messukini";
  ad = "Princesa flama      Melina Tobio";
  ae = "Usar click, mouse y teclas, gracias!";
  
  //Imagenes
  fondo = loadImage("fondo.png");
abeja = loadImage ("abeja.png");
abeja.resize(120,120);
mariposa = loadImage ("mariposaa.png");
mariposa.resize(140,140);
mariquita = loadImage ("mariquitaa.png");
mari = loadImage ("mari.png");
mari.resize(100,100);
}

void draw(){
println(mouseX, mouseY);
println(frameCount);
image (fondo,0,0);
image (abeja, ax,ay);
image (mariposa, x1,50);
image (mari, x2,400);

//Pantalla eterna
textFont(fuente,30);
text(ae,500,25);

//Pantalla 1
if ( 30 <frameCount && frameCount < 220) {
textFont (fuente,104);
text(a, 280, 230);
text(b,250,350);
}

//Pantalla 2
if ( 220 <frameCount && frameCount < 420) {
  textFont (fuente,54);
  text( c, 320, 132);
  text(f, 320,330);
}
if ( 220 <frameCount && frameCount < 420) {
  textFont (fuente,84);
  text( d, 280, 187);
  text( e, 180, 255);
  text( g, 270, 384);
}

//Pantalla 3
if ( 420 <frameCount && frameCount < 620) {
  textFont (fuente,44);
  text( h,290, 80);
  text( j,325, 230);
}
if ( 420 <frameCount && frameCount < 620) {
  textFont (fuente,54);
  text( i,290, 130);
  text( k,290, 270);
  text( l,320, 305);
  text( m,320, 340);
  text( n,300, 380);
  text( o,320, 415);
}
//Pantalla 4
if ( 620 <frameCount && frameCount < 1000) {
textFont (fuente,44);
text( t, 370, 80);

textFont (fuente,54);
  text( u,190, 135);
  text( v,210, 180);
  text( w,180, 215);
  text( x,130, 250);
  text( y,200, 285);
  text( z,210, 320);
  text( aa,180, 355);
  text( ab,180, 395);
  text( ac,180, 435);
  text( ad,180, 485);
}
//Pantalla 5
if ( 1000 <frameCount && frameCount < 1600) {
  textFont (fuente,54);
  text( p, 195, 180);
  text( r, 100, 300);

  textFont (fuente,84);
  text( q, 230, 245);

  textFont (fuente,35);
  text (s,350,520);
}
//Mover mariposa
if(x1 <= 800){
  x1 = x1 + 2;
}
if(x2 <= 800){
  x2 = x2 - 3;
 //Mover abejita
 if (keyPressed && (key == CODED)){
   if (keyCode == LEFT){
     ax -=3;
   } else if (keyCode == RIGHT){
     ax +=3;
   }
    if (keyCode == UP){
     ay -=3;
   } else if (keyCode == DOWN){
     ay +=3;
   }
}
}
}

//Musiculi
void mousePressed() {
  sound.trigger();
}

//Mover mariquita
void mouseMoved(){
  image (mariquita, mouseX -100, mouseY-70);
}
