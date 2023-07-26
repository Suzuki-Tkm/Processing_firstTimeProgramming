int start;
void setup() {
  background(255);
  size(480, 480);
  textFont(createFont("SansSerif", 24, true));
}
void draw() {
  background(255);
  fill(0);
  text((millis()-start)/1000.0, 100, 100);
}
void mousePressed() {
  start=millis();
}
