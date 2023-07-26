int x=100;
int y=100;         
int r=170, g=250, b=150;
int speed;
int speed_x=1, speed_y=1;
int wall_x, wall_y=300;
int wall_width=480, wall_height=10;
int squid_width=60;
int squid_height=82;
int Q=255;
boolean isDive;

void setup() {
  size(480, 480);
  speed=1;
  speed_x=speed_x*speed;
  speed_y=speed_y*speed;
}

void ika() {
  fill(r, g, b, Q);
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

void draw() {
  background(255);
  fill(0);
  rect(wall_x, wall_y, wall_width, wall_height);

  ika();
  x=speed_x+x;
  y=speed_y+y;


  if (x>= 480- squid_width/2) {
    speed_x=speed_x*(-1);
  } else if (x<= 0+squid_width/2) {
    speed_x=speed_x*(-1);
  }  

  if (isDive) {
    if (y>= 480-squid_height/2) {
      speed_y=speed_y*(-1);
    } else if (y<=0+squid_height/2) {
      speed_y=speed_y*(-1);
    }
  } else {
    if (y>=wall_y+ wall_height) {
      if (y<=wall_y+ wall_height+squid_height/2) {
        speed_y=speed_y*(-1);
      } else if (y>= 480-squid_height/2) {
        speed_y=speed_y*(-1);
      }
    }

    if (y<=wall_y) {
      if (y<=0+squid_height/2) {
        speed_y=speed_y*(-1);
      } else if (y>= wall_y-squid_height/2) {
        speed_y=speed_y*(-1);
      }
    }
  }
}

void keyPressed() {
  isDive=Q==255;
  if (isDive) {
    if ( key==' ') {
      Q=0;
    }
  } else {
    if ( key==' ') {
      Q=255;
    }
  }
}
