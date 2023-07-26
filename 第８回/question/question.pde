void setup() {
  size(480, 480);
}
int x=90;
int y=240;
int a=1;
int n;
int m;
int b;
void minion() {
  stroke(0, 0, 0);
  strokeWeight(8);
  line(x-90, y-20, x-50, y);
  line(x+10, y, x+50, y-20);
  line(x-60, y+40, x-70, y+100);
  line(x+30, y+100, x+20, y+40);
  strokeWeight(1);
  noStroke();
  fill(250, 237, 86);
  circle(x-20, y-50, 100);
  fill(46, 149, 255);
  circle(x-20, y+50, 100);
  fill(250, 237, 86);
  rect(x-70, y-50, 100, 100);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  rect(x-70, y-50, 30, 20);
  rect(x-10, y-50, 40, 20);
  fill(108, 106, 86);
  circle(x-20, y-40, 60);
  fill(255, 255, 255);
  circle(x-20, y-40, 50);
  fill(209, 140, 84);
  circle(x-20, y-40, 20);
  fill(0, 0, 0);
  circle(x-20, y+10, 10);
  line(x-20, y-110, x-20, y-90);
  noStroke();
  fill(46, 149, 255);
  rect(x-70, y+30, 100, 20);
}

void draw() {
  background(255);
  minion();
a=a+1;
a=a%960;

if(a>=480){
  x=x-1;
  
}
else if(a<480){
  x=x+1;
}
}
