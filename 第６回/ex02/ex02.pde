int x =420;
int step ;

void setup() {
  size(480, 480);
  frameRate(2);
}
void draw() {
  background(255, 255, 255);
  fill(0, 0, 255);
  circle(x, 240, 60);
  step=step+120;
  step=step%480;
  x=420-step;
}
