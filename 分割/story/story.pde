int scene_small=3;
boolean key1=false;
boolean key2=false;





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
PImage kagu;
PImage plant;
PImage book;
void setup() {
  size(480, 480);
  background(255);
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
  kagu = loadImage("kagu.png");
  plant = loadImage("plant.png");
  book = loadImage("book.png");
}

void draw() {

  if (scene_small==0) {
    room01();
    fill(255);
    triangle(240, 470, 220, 450, 260, 450);
  } else if (scene_small==1) {
    room02();
    fill(255);
    triangle(240, 470, 220, 450, 260, 450);
    if (key1==false) {
      image(key01, 70, 390, key01.width*0.1, key01.height*0.1);
    }
  } else if (scene_small==2) {
    room03();
    triangle(240, 470, 220, 450, 260, 450);
  } else if (scene_small==3) {
    room04();
    triangle(240, 470, 220, 450, 260, 450);
    if (key2==false) {
      image(key01, 270, 390, key01.width*0.1, key01.height*0.1);
    }
  }
}



void mousePressed() {

  if (scene_small==0) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=1;
    }
    if(mouseX>=360 && mouseX<=440 && mouseY>=280 &&mouseY<=420){ //
     println("a"); 
    }
  } else if (scene_small==1) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=0;
    } 
    if (mouseX>=290 && mouseX<=390 && mouseY>=50 && mouseY<=110) {
      scene_small=2;
    }
    if (mouseX>=70 && mouseX<=110 && mouseY>=390 &&mouseY<=430) {
      key1=true;
    }
    if(mouseX>=120 &&mouseX<=280 && mouseY>=175 && mouseY<=230 ){//
     println("a"); 
    }
  } else if (scene_small==2) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=1;
    }
  } else if (scene_small==3) {
    if (mouseX>=220 && mouseX<=260 && mouseY>=450 && mouseY<=470) {
      scene_small=0;
    }
    if (mouseX>=270 && mouseX<=310 && mouseY>=395 &&mouseY<=435 ) { 
      key2=true;
    }
  }
}



void keyPressed() {
  if (key=='o' || key=='2') {
    scene_small=3;
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
