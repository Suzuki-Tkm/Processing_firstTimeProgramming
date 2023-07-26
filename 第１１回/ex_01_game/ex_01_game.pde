float box0_x, box1_x, box2_x; // 箱のx座標
float box_y;                  // 箱のy座標
float box_size;               // 箱のサイズ
float squid_x;                // イカのx座標
float squid_y;                // イカのy座標
int hiding;                   // イカの隠れている箱番号
int clicked;                  // クリックされた箱番号
int scene;                    // ゲーム中 または ゲーム終了
float number;

void setup() {

  size(480, 480);
  background(255);
  number=random(1, 4);
  box0_x=35;
  box1_x=190;
  box2_x=345;
  box_y=150;
  box_size=100;
  textFont(createFont("SansSerif", 50, true));
}

void draw() {

  background(255);
  hiding=int(number);
  ika(hiding*170-100, 200); 

  if (clicked!=1) {
    square(box0_x, box_y, box_size);
  }
  if (clicked!=2) {
    square(box1_x, box_y, box_size);
  }
  if (clicked!=3) {
    square(box2_x, box_y, box_size);
  }
  if (scene==0) {
    fill(195, 255, 160);
    text("イカを探せ！", 100, 400);
  }

  if (scene==1) {
    if (hiding==clicked) {
      fill(250, 190, 80);
      text("win", 200, 400);
    } else {
      fill(5, 50, 200);
      text("lose", 200, 400);
    }
  }
}
void mousePressed() {

  if (scene==0) {
    if (mouseX>=box0_x && mouseX<box0_x+box_size && mouseY>=box_y && mouseY<box_y+box_size) {
      clicked=1;
      scene=1;
    } else if (mouseX>=box1_x && mouseX<box1_x+box_size && mouseY>=box_y && mouseY<box_y+box_size) {
      clicked=2;
      scene=1;
    } else if (mouseX>=box2_x && mouseX<box2_x+box_size && mouseY>=box_y && mouseY<box_y+box_size) {
      clicked=3;
      scene=1;
    }
  }
}

void ika(int squid_x, int squid_y) {
  fill(0, 0, 0);
  ellipse(squid_x, squid_y, 40, 60);
  ellipse(squid_x-5, squid_y+25, 7, 35);
  ellipse(squid_x-15, squid_y+20, 7, 35);
  ellipse(squid_x+5, squid_y+25, 7, 35);
  ellipse(squid_x+15, squid_y+20, 7, 35);
  triangle(squid_x, squid_y-40, squid_x-30, squid_y-10, squid_x+30, squid_y-10);
  triangle(squid_x, squid_y+20, squid_x-30, squid_y-10, squid_x+30, squid_y-10);
  fill(255, 255, 255);
  noStroke();
  ellipse(squid_x-7, squid_y, 15, 20);
  ellipse(squid_x+7, squid_y, 15, 20);
  fill(0, 0, 0);
  ellipse(squid_x+6, squid_y-5, 7, 7);
  ellipse(squid_x-6, squid_y-5, 7, 7);
}
