float rotAngle = 45;
int w= 15;
int h= 300;
int x, y;
int R, G, B;

float speedX;
float speedY;

void setup(){
  size (900,900);
  
  speedX = 4;
  speedY = 5;
}

void draw(){
  fill(0);
    pushMatrix(); // remembers the translation / rotation beneath it.
   fill(321, 14, 32);
  translate(100, 100);
  rotate(radians(rotAngle));
  rectMode(CENTER);
  rect(x,y,w,h);
  rotAngle+=45;
 
  popMatrix();

x+=speedX;
y+=speedY;

 if (x > width  || x < 0) {
    x -= speedX;
    speedX = -speedX;
  }
  
  if (y> height  || y < 0) {
   y -= speedY;
    speedY = -speedY;


}}