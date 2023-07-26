void setup() {
  size(480, 480);
}

int x = 480;
int y = 480;

void ika() {

  fill(0, 0, 0);
  ellipse(x, y, 40, 60);
  ellipse(x-5, y+25, 7, 35);
  ellipse(x-15, y+20, 7, 35);
  ellipse(x+5, y+25, 7, 35);
  ellipse(x+15, y+20, 7, 35);
  triangle(x, y-40, x-30, y-10, x+30, y-10);
  triangle(x, y+20, x-30, y-10, x+30, y-10);
  fill(255, 255, 255);
  noStroke();
  ellipse(x-7, y, 15, 20);
  ellipse(x+7, y, 15, 20);
  fill(0, 0, 0);
  ellipse(x+6, y-5, 7, 7);
  ellipse(x-6, y-5, 7, 7);
}

void draw() {
  background(255, 255, 255);
  x=x-1;
  y=y-1;
  ika();
}
