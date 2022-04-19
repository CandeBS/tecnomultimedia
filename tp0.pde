void setup() {
background (#91a7e6);
size (600, 600);
noStroke();
}

void draw() {
  //Hielo
  fill (255);
  rect(399,390, 210.0, 210.0);
  rect(287,394, 144.0, 144.0);
  rect(254,395, 34.0, 112.0);
  rect(287,505,322,38);
  //Cuerpo de Spheal, Pacita: #FAF9D8
  fill (#4A6EE5);
  circle (220,200,250); 
  circle (150,100,50);
  circle (257,80,53);
  //cola
 fill (#4A6EE5);
 ellipse (300,300,120,70);
 ellipse (290,320,120,70);
 //Panza
  fill (#FAF9D8);
  ellipse (215,238,230,178);
 // ellipse (207,232,225,150);
 //Patas
 ellipse (100,205,97,60);
 ellipse (350,200,97,60);
   //Boca
 fill (#b8324a);
ellipse (200,215,100,10);
 ellipse (200,215,100,120);
 fill (#ffffff);
triangle(143,170,170,180, 160, 200);
triangle(250,170,210,170,220,200);
 fill (#e87de6);
ellipse (200,252,70,50);
 fill (#4A6EE5);
 ellipse (217,160,80,40);
 ellipse (160,160,60,40);
 fill (#000000);
 circle (195,158,3);
 circle (175,158,3);
    //manchas
 fill (#ffffff);
  circle (285,130,30);
  circle (300,160,15);
  circle (320,149,17);
 //Ojos
 fill (#000000);
 circle (220,130,30);
 fill (#ffffff);
 circle (217,127,10);
 fill (#000000);
 ellipse (147,130,22,30);
 fill (#ffffff);
 circle (148,127,9);
}
