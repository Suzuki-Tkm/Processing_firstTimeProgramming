//githubtest
import processing.sound.*;
SoundFile click; 
SoundFile answer;
SoundFile bad;
SoundFile poka;
SoundFile door_sound;
SoundFile m;
SoundFile space;

PImage back01;
PImage back02;
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
PImage kagu;
PImage plant;
PImage book;
PImage word2;
PImage word3;

int rimit;
int rimit2;
int concentration;
int scene_big;
int scene_small=10;
int scene_mini;
int word_scene;
int word_scene2;
int c;
int ika_x=100;
int ika_y=200;    
int speed_x=6, speed_y=4;
int squid_width=60;
int squid_height=82;
int ika_count;
int game_scene=10;
int time;
int number1;
int number2;
int number3;
int r=255, g, b;
int word_rimit;
int word_rimit2;
int word_rimit3;
int score;
boolean key1=false;
boolean key2=false;
boolean key3=false;
boolean door=false;

void setup() {
  size(480, 480);
  background(255);
  textFont(createFont("SansSerif", 24, true));
  back01 = loadImage("back01.jpg");
  back02 = loadImage("back02.jpg");
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
  word2 = loadImage("word2.png");
  word3 = loadImage("word3.png");
  kagu = loadImage("kagu.png");
  plant = loadImage("plant.png");
  book = loadImage("book.png");

  answer = new SoundFile(this, "answer.mp3");
  click = new SoundFile(this, "click.mp3");
  bad = new SoundFile(this, "bad.mp3");
  poka = new SoundFile(this, "poka.mp3");
  door_sound = new SoundFile(this, "door.mp3");
  m = new SoundFile(this, "b.mp3");
  space = new SoundFile(this, "space.mp3");
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
      text("酸素濃度は時間の経過", 60, 210);
      text("によって減少する", 250, 240);
      text("Please press the space.", 10, 460);
    }

    if (word_scene>4 || word_scene<0) {
      word_scene=0;
    }
  }

  if (scene_small==0) {
    if (door==false) {
      room01();
      fill(255);
      triangle(240, 470, 220, 450, 260, 450);
    }
    if (door==true) {
      room01_1();
      fill(255);
      triangle(240, 470, 220, 450, 260, 450);
    }
    fill(0);
    textSize(30);
    text("酸素濃度は"+concentration+"％", 10, 40);

    if (scene_mini==3) {
      if (millis()-word_rimit<=3000) {
        image(word2, 0, 250, word2.width*0.9, word2.height*0.5);
        textSize(20);
        text("ドアの鍵がかかっていて開けられない...", 40, 320);
      }
    }
    if (word_scene2==1) {
      if (millis()-word_rimit2<=3000) {
        image(word2, 0, 250, word2.width*0.9, word2.height*0.5);
        textSize(20);
        text("観葉植物がある。おっと...", 40, 320);
      }
      if (millis()-word_rimit2<=6000 && 3000<millis()-word_rimit2) {
        image(word2, 0, 250, word2.width*0.9, word2.height*0.5);
        textSize(20);
        text("裏から鍵を発見した!", 40, 320);
      }
    }
    if (scene_mini==4) {
      //ドアのロック解除　謎々
      background(255);
      fill(0);
      triangle(240, 480, 220, 460, 260, 460);
      fill(255);
      rect(190, 190, 100, 100);
      rect(90, 190, 100, 100);
      rect(290, 190, 100, 100);
      triangle(240, 150, 220, 170, 260, 170);
      triangle(140, 150, 120, 170, 160, 170);
      triangle(340, 150, 320, 170, 360, 170);
      triangle(240, 330, 220, 310, 260, 310);
      triangle(140, 330, 120, 310, 160, 310);
      triangle(340, 330, 320, 310, 360, 310);
      fill(r, g, b);
      rect(160, 400, 160, 50);
      textSize(40);
      fill(0);
      text("(66+39)×81は???", 70, 50);
      textSize(30);
      text("ロック解除", 165, 440);
      textSize(60);
      text(number1, 120, 260);
      text(number2, 220, 260);
      text(number3, 320, 260);
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
    if (key1==true) {
      if (millis()-word_rimit2<=3000) {
        image(word3, 0, 250, word2.width*0.9, word2.height*0.5);
        fill(0);
        text("鍵を手に入れた", 80, 300);
      }
    }
    if (word_scene2==2) {
      if (millis()-word_rimit3<=3000) {
        image(word2, 0, 250, word2.width*0.9, word2.height*0.5);
        textSize(20);
        text("鍵が壊されていて開けられない...", 40, 320);
      }
    }

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
        fill(0);
        triangle(240, 470, 220, 450, 260, 450);
      } else if (ika_count<10) {
        background(255);
        image(desk, 5, 285, desk.width*1.175, desk.height*1.175); 
        image(game, 5, 40, game.width*1.175, game.height*1.175);
        fill(0);
        textSize(30);
        text("you lose...", 160, 150);
        textSize(20);
        text("スペースを押してリスタート", 100, 270);
        fill(0);
        triangle(240, 470, 220, 450, 260, 450);
      }
    }
  } else if (scene_small==2) {
    room03();
    triangle(240, 470, 220, 450, 260, 450);
    fill(255);
    textSize(30);
    text("酸素濃度は"+concentration+"％", 10, 40);

    if (scene_mini==1) {
      if (millis()-word_rimit<=3000) {
        image(word3, 0, 250, word2.width*0.9, word2.height*0.5);
        fill(0);
        text("鍵が3つ必要のようだ...", 80, 300);
      }
    } else if (scene_mini==2) {
      //ドアの謎
      image(word, 0, 100, word.width*1.2, word.height*1.2);
      c=c+10;
      fill(77, 77, 77, c);
      textSize(20);
      text("1は0", 140, 180);
      text("2は0", 140, 200);
      text("6は1", 140, 220);
      text("7は0", 140, 240);
      text("10は1", 140, 260);
      text("10+8は3", 240, 200);
      text("10×8は2", 240, 240);
    }
  } else if (scene_small==3) {
    room04();
    triangle(240, 470, 220, 450, 260, 450);
    fill(255);
    textSize(30);
    text("酸素濃度は"+concentration+"％", 10, 40);
    if (key2==false) {
      image(key01, 270, 390, key01.width*0.1, key01.height*0.1);
    }
    if (key2==true) {
      if (millis()-word_rimit2<=3000) {
        image(word3, 0, 250, word2.width*0.9, word2.height*0.5);
        fill(0);
        text("鍵を手に入れた", 80, 300);
      }
    }
  }

  if (scene_big==2) {       //脱出完了　　成果画面
    image(back02, 0, 0, back01.width*1.175, back01.height*1.175);
    c=c+2;
    fill(77, 77, 77, c);
    textSize(45);
    text("脱出おめでとう!", 50, 240);
    textSize(25);
    fill(77, 77, 77, c-100);
    textSize(30);
    text("酸素は残り"+score+"%だった", 50, 350);
    textSize(20);
    fill(77, 77, 77, c-500);
    text("Please press the space.", 10, 460);
  }

  if (concentration<=-1  && scene_big!=0 && scene_big!=1) {  //gameover
    image(back02, 0, 0, back01.width*1.175, back01.height*1.175);
    c=c+2;
    fill(77, 77, 77, c);
    textSize(45);
    text("Game over", 50, 240);
    fill(77, 77, 77, c-100);
    textSize(20);
    text("酸素がつきてしまった....", 50, 350);
    fill(77, 77, 77, c-200);
    text("スペースを押してリベンジだ!", 50, 400);
  }
  if (concentration==0) {
    c=0;
  }

  if (millis()>=399000  && millis()<=402000 && key1==true && key2==true && key3==true) {   //ヒント 
    image(word2, 0, 250, word2.width*0.9, word2.height*0.5);
    textSize(20);
    text("そんなに難しく考えないで...見た目だよ！", 40, 320);
  }
}

void keyPressed() {

  if (scene_big==0 && key==' ') {   //スタート画面
    scene_big=1;
    c=0;
    space.play();
  } else if (scene_big==1 && word_scene==4 && key==' ' && game_scene!=0 && game_scene!=1 && game_scene!=2) {   //説明画面
    scene_small=0;
    scene_big=10;
    rimit=millis();
    space.play();
  } else if (concentration<=-1 || scene_big==2 && key==' ') { //リスタート
    scene_big=0;
    scene_small=10;
    scene_mini=0;
    word_scene=0;
    game_scene=10;
    concentration=0;
    rimit=0;
    rimit2=0;
    number1=0;
    number2=0;
    number3=0;
    r=255; 
    g=0; 
    b=0;
    word_scene2=0;
    key1=false;
    key2=false;
    key3=false;
    door=false;
    space.play();
  }
  if (key=='o' || key=='2') {
    scene_small=3;
    answer.play();
  }
  if (game_scene==0 && key==' ') {
    ika_count=0;
    game_scene=1;
    time=millis();
    space.play();
  } else if (game_scene==2 && key==' ') {
    ika_count=0;
    game_scene=0;
    ika_count=0;
    space.play();
  }
}

void mousePressed() {

  if (scene_big==1 && mouseX>=360 && mouseX<=410 && mouseY>=245 && mouseY<=265) {
    c=0;
    word_scene=word_scene+1;
    click.play();
  }
  if (scene_big==1 && mouseX>=65 && mouseX<=115 && mouseY>=245 && mouseY<=265) {
    c=0;
    word_scene=word_scene-1;
    click.play();
  }
  if (scene_small==0 && scene_mini!=4) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=1;
      click.play();
    }
    if (mouseX>=110 &&  mouseX<=240 && mouseY>=140 && mouseY<=350) {//ドア
      scene_mini=3;
      word_rimit=millis();
      m.play();
      if (door==true) {
        //脱出
        scene_big=2;
        c=0;
        score=concentration;
        door_sound.play();
      }
    }
    if (mouseX>=255 && mouseX<=290 && mouseY>=180 &&mouseY<=300) {//ロック解除
      scene_mini=4;
    }
    if (mouseX>=360 && mouseX<=440 && mouseY>=280 &&mouseY<=420) {
      word_scene2=1;
      key3=true;
      m.play();
      word_rimit2=millis();
    }
  } else if (scene_small==1 && game_scene!=0 && game_scene!=1 && game_scene!=2 ) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=0;
      click.play();
    } 
    if (mouseX>=290 && mouseX<=390 && mouseY>=50 && mouseY<=110) {  
      scene_small=2;
      click.play();
    }
    if (mouseX>=70 && mouseX<=110 && mouseY>=390 &&mouseY<=430) {    //鍵
      key1=true;
      m.play();
      word_rimit2=millis();
    }
    if (mouseX>=100 && mouseX<=200 && mouseY>=240 && mouseY<=310) {   //pc
      game_scene=0;
    }
    if (mouseX>=120 &&mouseX<=280 && mouseY>=175 && mouseY<=230) {
      word_scene2=2;
      m.play();
      word_rimit3=millis();
    }
  } else if (scene_small==2) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=1;
      click.play();
    }

    if (mouseX>=300 && mouseX<=480 && mouseY>=380 && mouseY<=480) {  //宝箱　クイズ
      if (key1==true && key2==true && key3==true) {
        scene_mini=2;
        c=0;
        m.play();
      } else if (key1==false || key2==false || key3==false) {
        word_rimit=millis();
        scene_mini=1;
        m.play();
      }
    }
  } else if (scene_small==3) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=0;
      click.play();
    }
    if (mouseX>=270 && mouseX<=310 && mouseY>=395 &&mouseY<=435 ) { 
      key2=true;
      word_rimit2=millis();
      m.play();
    }
  }
  if (game_scene==1) {
    if (ika_x+squid_width/2>=mouseX && ika_x-squid_width/2<=mouseX && ika_y+squid_height/2>=mouseY && ika_y-squid_height/2<=mouseY) {
      ika_count=ika_count+1;
      poka.play();
    }
  }
  if (game_scene==2) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=1;
      game_scene=10;
      ika_count=0;
      click.play();
    }
  }
  if (scene_mini==4) {
    if (mouseX>=120 && mouseX<=160 && mouseY>=150 && mouseY<=170) {
      number1=number1+1;
      click.play();
      if (number1==10) {
        number1=0;
      }
    }
    if (mouseX>=220 && mouseX<=260 && mouseY>=150 && mouseY<=170) {
      number2=number2+1;
      click.play();
      if (number2==10) {
        number2=0;
      }
    }
    if (mouseX>=320 && mouseX<=360 && mouseY>=150 && mouseY<=170) {
      number3=number3+1;
      click.play();
      if (number3==10) {
        number3=0;
      }
    }

    if (mouseX>=120 && mouseX<=160 && mouseY>=310 && mouseY<=330) {
      number1=number1-1;
      click.play();
      if (number1==-1) {
        number1=9;
      }
    }
    if (mouseX>=220 && mouseX<=260 && mouseY>=310 && mouseY<=330) {
      number2=number2-1;
      click.play();
      if (number2==-1) {
        number2=9;
      }
    }
    if (mouseX>=320 && mouseX<=360 && mouseY>=310 && mouseY<=330) {
      number3=number3-1;
      click.play();
      if (number3==-1) {
        number3=9;
      }
    }
    if (mouseX>=160 && mouseX<=320 && mouseY>=400 && mouseY<=450) {
      if (number1==2 && number2==4 && number3==0) {
        //ドアロック解除
        door=true;
        r=80;
        g=255;
        b=100;
        answer.play();
      }
      if (number1!=2 || number2!=4 || number3!=0) {
        bad.play();
      }
    }
    if (mouseX>=220 && mouseX<=260 && mouseY>=460 && mouseY<=480) {
      scene_small=0;
      scene_mini=5;
      click.play();
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
  image(kagu, 130, 340, kagu.width*0.7, kagu.height*0.5);
  image(plant, 350, 280, plant.width*0.35, plant.height*0.35);
}

void room01_1() {
  room();
  image(door_open, -25, 123, door_open.width*0.35, door_open.height*0.35);
  image(door_key, 230, 180, door_key.width*0.3, door_key.height*0.3);
  image(kagu, 130, 340, kagu.width*0.7, kagu.height*0.5);
  image(plant, 350, 280, plant.width*0.35, plant.height*0.35);
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
  strokeWeight(1);
  stroke(0);
  background(106, 106, 106);
  image(yuka, -5, 280, yuka.width*1.5, yuka.height*1.5);
  fill(106, 106, 106);
  rect(100, 100, 280, 250);
  quad(0, 30, 100, 100, 100, 350, 0, 480);  
  quad(380, 100, 380, 350, 480, 480, 480, 30);
  image(book, 105, 90, book.width*0.7, book.height*0.7);
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
