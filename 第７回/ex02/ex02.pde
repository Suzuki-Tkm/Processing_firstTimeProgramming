void setup() {
  background(255, 255, 255);
  size(480, 480);
}
int x;
int y;
int right;
int center;
int left;
int y2;
int y3;

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

void draw() {
  background(255, 255, 255);
  ika(50, y, mouseX, mouseX, mouseY);
  right=right+5;
  right=right%480;
  y=480-right;
  ika(240, y2, mouseX, mouseY, mouseY);
  center=center+1;
  center=center%480;
  y2=480-center;
  ika(430, y3, mouseY, mouseX, mouseY);
  left=left+10;
  left=left%480;
  y3=480-left;
}
