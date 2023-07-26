int x =20;
int y;
int step = 0;

void setup() {
  size(480, 480);
  frameRate(2);
  background(255, 255, 255);
}

void draw() {

  rect(x, y+100, 20, 20);
  x=x+50;
  y=y+50;
  y=y%150;
}
