void setup() {
  size(480, 480);
  background(255, 255, 255);
  int x = int(random(160));
  fill(x, x, x);

  int diameter = int(random(160));
  circle(120, 120, diameter);
  circle(360, 120, diameter);
  circle(120, 360, diameter);
  circle(360, 360, diameter);
}
  
