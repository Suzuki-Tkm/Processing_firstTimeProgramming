int ika_x=100;
int ika_y=200;    
int speed_x=5, speed_y=3;
int squid_width=60;
int squid_height=82;
int ika_count;
int game_scene;
PImage game;
PImage desk;
int time;

void setup() {
  size(480, 480);
  background(255);
  game = loadImage("game.png");
  desk = loadImage("desk.png");
  textFont(createFont("SansSerif", 24, true));
}

void draw() {
  background(255);
  if (game_scene==0) {

    image(desk, 5, 285, desk.width*1.175, desk.height*1.175); 
    image(game, 5, 40, game.width*1.175, game.height*1.175);
    fill(0);
    textSize(20);
    text("シューティングゲーム", 100, 150);
    text("20秒以内に10点を目指せ！", 100, 190);
    text("何かもらえるかも...", 100, 230);
    text("スペースを押してスタート", 100, 270);
  } else if (game_scene==1) {
    background(125,240,250);
    fill(255);
    stroke(0);
    strokeWeight(3);
    rect(0, 0, 240, 80);
    rect(240, 0, 240, 80);
    line(0, 80, 480, 80);
    noStroke();
    fill(0);
    text("time:"+(millis()-time)/1000.0+"秒", 40, 50);
    text(ika_count+"点", 330, 50);
    ika();
    ika_x=speed_x+ika_x;
    ika_y=speed_y+ika_y;
    if (ika_x>= 480- squid_width/2) {
      speed_x=speed_x*(-1);
    } else if (ika_x<= 0+squid_width/2) {
      speed_x=speed_x*(-1);
    }  
    if (ika_y>= 480-squid_height/2) {
      speed_y=speed_y*(-1);
    } else if (ika_y<=85+squid_height/2) {
      speed_y=speed_y*(-1);
    }

    if ((millis()-time)/1000.0>=20) {
      game_scene=2;
    }
  }
  if (game_scene==2) {
    if (ika_count>=10) {
      image(desk, 5, 285, desk.width*1.175, desk.height*1.175); 
      image(game, 5, 40, game.width*1.175, game.height*1.175);
      fill(0);
      textSize(30);
      text("you win", 160, 150);
      textSize(23);
      text("キーボードのoと2に何か隠れてるかも", 40, 190);
      textSize(20);
      text("スペースを押してリスタート", 100, 270);
    } else if (ika_count<10) {
      image(desk, 5, 285, desk.width*1.175, desk.height*1.175); 
      image(game, 5, 40, game.width*1.175, game.height*1.175);
      fill(0);
      textSize(30);
      text("you lose...", 160, 150);
      textSize(20);
      text("スペースを押してリスタート", 100, 270);
    }
  }
}

void mousePressed() {


  if (ika_x+squid_width/2>=mouseX && ika_x-squid_width/2<=mouseX && ika_y+squid_height/2>=mouseY && ika_y-squid_height/2<=mouseY) {
    ika_count=ika_count+1;
  }
}


void keyPressed() {


  if (game_scene==0 && key==' ') {
    game_scene=1;
    time=millis();
  } else if (game_scene==2 && key==' ') {
    game_scene=0;
  }
}



void ika() {
  fill(255,130, 0);
  ellipse(ika_x, ika_y, 40, 60);
  ellipse(ika_x-5, ika_y+25, 7, 35);
  ellipse(ika_x-15, ika_y+20, 7, 35);
  ellipse(ika_x+5, ika_y+25, 7, 35);
  ellipse(ika_x+15, ika_y+20, 7, 35);
  triangle(ika_x, ika_y-40, ika_x-30, ika_y-10, ika_x+30, ika_y-10);
  triangle(ika_x, ika_y+20, ika_x-30, ika_y-10, ika_x+30, ika_y-10);
  fill(255, 255, 255);
  noStroke();
  ellipse(ika_x-7, ika_y, 15, 20);
  ellipse(ika_x+7, ika_y, 15, 20);
  fill(0, 0, 0);
  ellipse(ika_x+6, ika_y-5, 7, 7);
  ellipse(ika_x-6, ika_y-5, 7, 7);
}
