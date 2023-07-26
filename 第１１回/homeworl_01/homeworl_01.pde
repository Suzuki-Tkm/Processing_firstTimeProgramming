float value;
void setup() {
  background(255);
  size(480, 480);
  textFont(createFont("SansSerif", 24, true));
  fill(0);
  text(0, 100, 100);
}
void draw() {
}
void mousePressed() {
  background(255);
  value=random(10);
  fill(0);
  text(int (value), 100, 100);
}
