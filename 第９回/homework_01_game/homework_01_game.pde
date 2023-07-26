PImage picture;
int scene=1;
int x=100;
int y=100;
int a=5;
int b=5;
int size=24;

void setup() {
  size(480, 480);
  picture = loadImage("space.jpg");
}

void draw() {
  background(255);

  if (scene==1) {
    noStroke();
    fill(210, 250, 190);
    rect(80, 200, 320, 100);
    fill(0);
    text("Press space key to start.", 100, 260);
    textSize(24);
  } else  if (scene==2) {
    image(picture, 0, 0 );
    minion();
    x=a+x;
    y=b+y;
    if (x<=90 ) {
      a=a*(-1);
    } else if (x>=430) {
      a=a*(-1);
    }  
    if (y<=100) {
      b=b*(-1);
    } else if (y>=380) {
      b=b*(-1);
    }
  } else if (scene==3) {
    noStroke();
    fill(250, 115, 175);
    rect(80, 200, 320, 100);
    fill(0);
    textSize(54);
    text("Game over", 100, 250);
    textSize(20);
    text("Press space key to start over.", 100, 290);
  }
}

void keyPressed() {
  if (scene==1) {
    if ( key==' ') {
      scene=2;
    }
  } else if (scene==2) {
    if ( key==' ') {
      scene=3;
    }
  } else if (scene==3) {
    if (key==' ') {
      scene=1;
    }
  }
}

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
