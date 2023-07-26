void setup() {
  size(480, 480);
  strokeWeight(8);
  background(58, 58, 58);
  
  noStroke();
  fill(255,0,0);
  circle(220, 210, 130); // ①
  
  noFill();
  stroke(255,255,0);
  triangle(330, 50, 261, 170, 399, 170); // ②
  
  stroke(0,0,255);
  fill(255,255,255);
  rect(110, 260, 120, 120); // ③
}
