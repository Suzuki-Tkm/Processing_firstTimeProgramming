void setup() {
  background(255, 255, 255);
  size(480, 480);
}
int x;
int y;
void ika(int x, int y, int r, int g, int b) {

  noStroke();
  fill(r, g, b);
  ellipse(x, y, 40, 60);
  ellipse(x-5, y+25, 7, 35);
  ellipse(x-15, y+20, 7, 35);
  ellipse(x+5, y+25, 7, 35);
  ellipse(x+15, y+20, 7, 35);
  triangle(x, y-40, x-30, y-10, x+30, y-10);
  triangle(x, y+20, x-30, y-10, x+30, y-10);
  fill(255, 255, 255);
  ellipse(x-7, y, 15, 20);
  ellipse(x+7, y, 15, 20);
  fill(0, 0, 0);
  ellipse(x+6, y-5, 7, 7);
  ellipse(x-6, y-5, 7, 7);
}
void mousePressed() {

  println(mouseX);
  println(mouseY);
  x=mouseX;
  y=mouseY;
  ika(x, y, x-100, y-50, x+50);
}
void draw() {
}
