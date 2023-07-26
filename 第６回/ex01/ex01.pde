void setup() {
  size(480, 480);
}
float x;
float y;
int z;


void draw() {
}

void mousePressed() {
  z=z+1;
  println(z);
  y=y+mouseY;
  println(y);
  x=y/z;
  println(x);
  println("");
}
