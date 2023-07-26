float small_x = 50;       // 小さな正方形のX座標
float small_y = 200;      // 小さな正方形のY座標
float big_x = 50;         // 大きな正方形のX座標
float big_y = 200;        // 大きな正方形のY座標

float small_speed_x = 1;  // 小さな正方形のX座標方向への移動量
float small_speed_y = 2;  // 小さな正方形のY座標方向への移動量
float big_speed_x = 3;    // 大きな正方形のX座標方向への移動量
float big_speed_y = 2;    // 大きな正方形のY座標方向への移動量

int small_size = 50;      // 小さな正方形の一辺の長さ
int big_size = 80;        // 大きな正方形の一辺の長さ

int small_state = 0;      // 小さな正方形の状態
int big_state = 0;        // 大きな正方形の状態

int click_counter = 0;    // 正方形がクリックされた回数

void setup() {
  size(480, 480);
}

void draw() {
  background(255);

  if (small_state==0) {
    fill(255, 255, 255);
    square(small_x, small_y, small_size);
  } else if (small_state==1) {
    fill(0, 255, 0);
    square(small_x, small_y, small_size);
  } else if (small_state==2) {
    fill(255, 0, 0);
    square(small_x, small_y, small_size);
  }

  if (big_state==0) {
    fill(255, 255, 255);
    square(big_x, big_y, big_size);
  } else if (big_state==1) {
    fill(0, 255, 0);
    square(big_x, big_y, big_size);
  } else if (big_state==2) {
    fill(255, 0, 0);
    square(big_x, big_y, big_size);
  }

  small_x=small_x+small_speed_x;
  small_y=small_y+small_speed_y;

  if (small_x<=0) {
    small_speed_x=-small_speed_x;
  } else if (small_x+small_size>width) {
    small_speed_x=-small_speed_x;
  } else if (small_y<=0) {
    small_speed_y =-small_speed_y;
  } else if (small_y+small_size>height) {
    small_speed_y=-small_speed_y;
  }

  big_x=big_x+big_speed_x;
  big_y=big_y+big_speed_y;

  if (big_x<=0) {
    big_speed_x=-big_speed_x;
  } else if (big_x+big_size>width) {
    big_speed_x=-big_speed_x;
  } else if (big_y<=0) {
    big_speed_y =-big_speed_y;
  } else if (big_y+big_size>height) {
    big_speed_y=-big_speed_y;
  }
}

void mousePressed() {

  if (small_state == 0) {
    if (small_x<=mouseX && small_x+small_size>mouseX && small_y<=mouseY && small_y+small_size>mouseY) { 
      small_state = 1;
      click_counter=click_counter+1;
      println("クリック"+click_counter+"回目");
    }
  } else  if (small_state == 1) {
    if (small_x<=mouseX && small_x+small_size>mouseX && small_y<=mouseY && small_y+small_size>mouseY) { 
      small_state = 2;
      click_counter=click_counter+1;
      println("クリック"+click_counter+"回目");
    }
  } else if (small_state == 2) {
    if (small_x<=mouseX && small_x+small_size>mouseX && small_y<=mouseY && small_y+small_size>mouseY) { 
      small_state = 0;
      click_counter=click_counter+1;
      println("クリック"+click_counter+"回目");
    }
  }

  if (big_state == 0) {
    if (big_x<=mouseX && big_x+big_size>mouseX && big_y<=mouseY && big_y+big_size>mouseY) { 
      big_state = 1;
      click_counter=click_counter+1;
      println("クリック"+click_counter+"回目");
    }
  } else  if (big_state == 1) {
    if (big_x<=mouseX && big_x+big_size>mouseX && big_y<=mouseY && big_y+big_size>mouseY) { 
      big_state = 2;
      click_counter=click_counter+1;
      println("クリック"+click_counter+"回目");
    }
  } else if (big_state == 2) {
    if (big_x<=mouseX && big_x+big_size>mouseX && big_y<=mouseY && big_y+big_size>mouseY) { 
      big_state = 0;
      click_counter=click_counter+1;
      println("クリック"+click_counter+"回目");
    }
  }
}
