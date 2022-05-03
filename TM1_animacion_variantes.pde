int x;
int y;
int y2;
float si = random (0,400) ;
float si2 = random (0,400) ;
void setup (){
  size (400,400);
  textSize (30);
}

void draw(){
  background (111, 209, 135);
 fill (72, 97, 156);
 ellipse (350, x , 100, 100);
  fill (72, 97, 156);
 ellipse (200, x , 100, 100);
  fill (190, 97, 156);
   triangle(300, 260, 70, si2, 90, 150);
   fill (255, 68,40);
 ellipse (50, x , 100, 100);
  fill (3, 40, 156);
 ellipse (si2, si , 100, 100);
  fill (8, 97, 156);
 ellipse (si2, si , 100, 100);
  fill (72, 97, 156);
 ellipse (si, si2 , 100, 100);
 fill (15,202,3);
 triangle(60, x, 150, y, si, 150);
 //Nombre
 fill (0);
 text ("Texturado de soja" , x , 200 );
 text ("tkm" , si , 220);
 y = y - 1;
 x = x + 1;
 si--;
 si2++;
}
