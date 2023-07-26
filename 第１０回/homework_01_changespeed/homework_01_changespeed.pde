int x = 0;
int y = 200;
boolean ball=true;
int speed=3;
int r=0, g=255, b=255;

void setup() {
  size(480, 480);
}

void draw() {
  background(255, 255, 255);

  x = x + speed;
  x = x % 480;
  noStroke();
  fill(0, 0, 255);
  circle(x, y, 50);

  noStroke();
  fill(r, g, b);
  rect(200, 300, 80, 50);
}

void mousePressed() {

  if (mouseX>=200 && mouseX<280 && mouseY>=300 && mouseY<350) {
    if (ball==true) {
      speed=30;
      r=255;
      g=255;
      b=0;
      ball=false;
    } else {
      speed=3;
      r=0;
      g=255;
      b=255;
      ball=true;
    }
  }
}
