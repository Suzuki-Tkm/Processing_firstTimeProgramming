import processing.sound.*;
SoundFile sound; 

PImage back01;
PImage word;
PImage mark;
PImage mark2;
PImage yuka;
PImage window;
PImage desk2;
PImage key01;
PImage pc;
PImage door_close;
PImage door_open;
PImage door_key;
PImage room03;
PImage hako;
PImage game;
PImage desk;

int rimit;
int rimit2;
int concentration;
int scene_big;
int scene_small=10;
int scene_mini;
int word_scene;
int c;
int ika_x=100;
int ika_y=200;    
int speed_x=5, speed_y=3;
int squid_width=60;
int squid_height=82;
int ika_count;
int game_scene=10;
int time;
boolean key1=false;
boolean key2=false;

void setup() {
  size(480, 480);
  background(255);
  textFont(createFont("SansSerif", 24, true));
  back01 = loadImage("back01.jpg");
  word = loadImage("word.png");
  mark = loadImage("mark.png");
  mark2 = loadImage("mark2.png");
  yuka = loadImage("yuka.png");
  window = loadImage("window.png");
  desk2 = loadImage("desk2.png");
  key01 = loadImage("key.png");
  pc = loadImage("pc.png");
  door_close = loadImage("door_close.png");
  door_open = loadImage("door_open.png");
  door_key = loadImage("door_key.png");
  room03 = loadImage("room03.jpg");
  hako = loadImage("hako.png");
  game = loadImage("game.png");
  desk = loadImage("desk.png");
}

void draw() {
  concentration=(100-(millis()-rimit)/5000);

  if (scene_big==0) {
    image(back01, 0, 0, back01.width*1.175, back01.height*1.175);
    c=c+2;
    fill(77, 77, 77, c);
    textSize(70);
    text("oxygen", 50, 190);
    fill(77, 77, 77, c-100);
    textSize(25);
    text("Please press the space.", 10, 460);
  } else if (scene_big==1) {
    image(back01, 0, 0, back01.width*1.175, back01.height*1.175);
    image(word, 0, 100, word.width*1.2, word.height*1.2);
    if (word_scene==0) {
      image(mark, 360, 240, mark.width*0.3, mark.height*0.3);
      c=c+2;
      fill(77, 77, 77, c);
      textSize(25);
      text("目を覚ますとある部屋に", 60, 190);
      text("閉じ込められた……", 170, 220);
    } else if (word_scene==1) {
      image(mark2, 60, 240, mark2.width*0.3, mark2.height*0.3);
      image(mark, 360, 240, mark.width*0.3, mark.height*0.3);
      c=c+2;
      fill(77, 77, 77, c);
      textSize(25);
      text("腕にあるのは酸素濃度計", 60, 220);
    } else if (word_scene==2) {
      image(mark2, 60, 240, mark2.width*0.3, mark2.height*0.3);
      image(mark, 360, 240, mark.width*0.3, mark.height*0.3);
      c=c+2;
      fill(77, 77, 77, c);
      textSize(25);
      text("時間以内に脱出できるのか……", 60, 220);
    } else if (word_scene==3) {
      image(mark2, 60, 240, mark2.width*0.3, mark2.height*0.3);
      image(mark, 360, 240, mark.width*0.3, mark.height*0.3);
      c=c+2;
      fill(77, 77, 77, c);
      textSize(30);
      text("ルール説明", 150, 220);
    } else if (word_scene==4) {
      image(mark2, 60, 240, mark2.width*0.3, mark2.height*0.3);
      c=c+2;
      fill(77, 77, 77, c);
      textSize(20);
      text("酸素濃度が０になるまでに脱出しろ", 60, 180);
      text("酸素濃度は時間の経過、部屋の移動", 60, 210);
      text("によって減少する", 250, 240);
      text("Please press the space.", 10, 460);
    }

    if (word_scene>4 || word_scene<0) {
      word_scene=0;
    }
  }

  if (scene_small==0) {
    room01();
    fill(255);
    triangle(240, 470, 220, 450, 260, 450);
    fill(0);
    textSize(30);
    text("酸素濃度は"+concentration+"％", 10, 40);

    if (scene_mini==3) {

      text("ドアの鍵がかかっていて開けられない...", 100, 100);
    }
    if (scene_mini==4) {

      //ドアのロック解除　謎々
    }
  } else if (scene_small==1) {
    room02();
    fill(255);
    triangle(240, 470, 220, 450, 260, 450);
    fill(0);
    textSize(30);
    text("酸素濃度は"+concentration+"％", 10, 40);
    if (key1==false) {
      image(key01, 75, 390, key01.width*0.07, key01.height*0.07);
    }

    //pc
    if (game_scene==0) {
      background(255);
      image(desk, 5, 285, desk.width*1.175, desk.height*1.175); 
      image(game, 5, 40, game.width*1.175, game.height*1.175);
      fill(0);
      textSize(20);
      text("シューティングゲーム", 100, 150);
      text("20秒以内に10点を目指せ！", 100, 190);
      text("何かもらえるかも...", 100, 230);
      text("スペースを押してスタート", 100, 270);
    } else if (game_scene==1) {
      background(125, 240, 250);
      fill(255);
      stroke(0);
      strokeWeight(3);
      rect(0, 0, 240, 80);
      rect(240, 0, 240, 80);
      line(0, 80, 480, 80);
      noStroke();
      fill(0);
      rimit2=20-(millis()-time)/1000;
      text("time:"+rimit2+"秒", 40, 50);
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
        background(255);
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
        background(255);
        image(desk, 5, 285, desk.width*1.175, desk.height*1.175); 
        image(game, 5, 40, game.width*1.175, game.height*1.175);
        fill(0);
        textSize(30);
        text("you lose...", 160, 150);
        textSize(20);
        text("スペースを押してリスタート", 100, 270);
      }
    }
  } else if (scene_small==2) {
    room03();
    triangle(240, 470, 220, 450, 260, 450);
    fill(255);
    textSize(30);
    text("酸素濃度は"+concentration+"％", 10, 40);

    if (scene_mini==1) {
      fill(255);
      text("鍵が二つ必要のようだ...", 100, 300);
    } else if (scene_mini==2) {

      //ドアの謎
    }
  } else if (scene_small==3) {
    room04();
    triangle(240, 470, 220, 450, 260, 450);
    fill(0);
    textSize(30);
    text("酸素濃度は"+concentration+"％", 10, 40);
    if (key2==false) {
      image(key01, 270, 390, key01.width*0.1, key01.height*0.1);
    }
  }
}
void keyPressed() {
  if (scene_big==0 && key==' ') {   //スタート画面
    scene_big=1;
    c=0;
  } else if (scene_big==1 && word_scene==4 && key==' ') {   //説明画面
    scene_small=0;
    rimit=millis();
  } else if (scene_big==2) {   //終了画面
    scene_big=1;
  }
  if (key=='o' || key=='2') {
    scene_small=3;
  }
  if (game_scene==0 && key==' ') {
    game_scene=1;
    time=millis();
  } else if (game_scene==2 && key==' ') {
    game_scene=0;
    ika_count=0;
  }
}


void mousePressed() {

  if (scene_big==1 && mouseX>=360 && mouseX<=410 && mouseY>=245 && mouseY<=265) {
    c=0;
    word_scene=word_scene+1;
  }
  if (scene_big==1 && mouseX>=65 && mouseX<=115 && mouseY>=245 && mouseY<=265) {
    c=0;
    word_scene=word_scene-1;
  }
  if (scene_small==0) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=1;
      concentration=concentration-2;
    }
    if (mouseX>=110 &&  mouseX<=240 && mouseY>=140 && mouseY<=350) {//ドア
      scene_mini=3;
    }
    if (mouseX>=255 && mouseX<=290 && mouseY>=180 &&mouseY<=300) {//ロック解除
      scene_mini=4;
    }
  } else if (scene_small==1 && game_scene!=0 && game_scene!=1 && game_scene!=2 ) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=0;
      concentration=concentration-2;
    } 
    if (mouseX>=290 && mouseX<=390 && mouseY>=50 && mouseY<=110) {
      scene_small=2;
    }
    if (mouseX>=70 && mouseX<=110 && mouseY>=390 &&mouseY<=430) {    //鍵
      key1=true;
    }
    if (mouseX>=100 && mouseX<=200 && mouseY>=240 && mouseY<=310) {   //pc  
      game_scene=0;
    }
  } else if (scene_small==2) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=1;
    }

    if (mouseX>=300 && mouseX<=480 && mouseY>=380 && mouseY<=480) {  //宝箱　クイズ
      if (key1==true && key2==true) {
        scene_mini=2;
      } else if (key1==false || key2==false) {
        scene_mini=1;
      }
    }
  } else if (scene_small==3) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=0;
    }
    if (mouseX>=270 && mouseX<=310 && mouseY>=395 &&mouseY<=435 ) { 
      key2=true;
    }
  }
  if (game_scene==1) {
    if (ika_x+squid_width/2>=mouseX && ika_x-squid_width/2<=mouseX && ika_y+squid_height/2>=mouseY && ika_y-squid_height/2<=mouseY) {
      ika_count=ika_count+1;
    }
  }
}
void room() {
  strokeWeight(1);
  stroke(0);
  background(227, 226, 224);
  image(yuka, -5, 280, yuka.width*1.5, yuka.height*1.5);
  fill(227, 226, 224);
  rect(100, 100, 280, 250);
  quad(0, 30, 100, 100, 100, 350, 0, 480);  
  quad(380, 100, 380, 350, 480, 480, 480, 30);
}


void room01() {
  room();
  image(door_close, 100, 122, door_close.width*0.6, door_close.height*0.6);
  image(door_key, 230, 180, door_key.width*0.3, door_key.height*0.3);
}
void room01_1() {
  room();
  image(door_open, -25, 123, door_open.width*0.35, door_open.height*0.35);
  image(door_key, 230, 180, door_key.width*0.3, door_key.height*0.3);
}


void room02() {
  room();
  image(window, 110, 170, window.width*0.6, window.height*0.6);
  strokeWeight(5);
  stroke(100, 75, 20);
  line(320, 120, 360, 120);
  line(320, 140, 360, 140);
  line(320, 160, 360, 160);
  line(320, 180, 360, 180);
  line(320, 200, 360, 200);
  line(320, 220, 360, 220);
  line(320, 240, 360, 240);
  line(320, 260, 360, 260);
  line(320, 280, 360, 280);
  line(320, 300, 360, 300);
  line(320, 320, 360, 320);
  line(320, 340, 360, 340);
  fill(100, 100, 100);
  noStroke();
  ellipse(340, 80, 50, 30);


  image(desk2, 60, 280, desk2.width*0.6, desk2.height*0.6);
  image(pc, 90, 230, pc.width*0.4, pc.height*0.4);
}

void room03() {
  image(room03, 0, 0, room03.width*1, room03.height*1);
  image(hako, 300, 350, hako.width*0.5, hako.height*0.5);
}

void room04() {
  room();
}

void ika() {
  fill(255, 130, 0);
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
