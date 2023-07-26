int x = 100;
int y = 100;

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

void setup() {
  size(480, 480);
  background(255, 255, 255);

  ika();
  x=160;
  y=160;
  ika();
  x=230;
  y=200;
  ika();  
  x=300;
  y=280;
  ika();
  x=40;
  y=240;
  ika();
  x=200;
  y=340;
  ika();
  x=350;
  y=350;
  ika();
  x=130;
  y=400;
  ika();
  x=400;
  y=50;
  ika();
  x=380;
  y=250;
  ika();
  x=260;
  y=30;
}
