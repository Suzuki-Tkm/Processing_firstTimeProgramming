PImage doorCLOSE;
PImage doorOPEN;
PImage kagi;
PImage table;
boolean key = false;


void kabe() {
  fill(248, 234, 176);
  rect(0, 70, 400, 300);
  quad(400, 370, 400, 70, 480, 0, 480, 480);
}

void kagu() {



  image(table, 230, 270, table.width * 0.5, table.height * 0.5);
}

void kagi() {
  image(kagi, 300, 280, kagi.width * 0.08, kagi.height * 0.08);
}

void doorclose() {
  image(doorCLOSE, 70, 180, doorCLOSE.width * 0.5, doorCLOSE.height * 0.5);
}

void dooropen() {
  image(doorOPEN, 0, 180, doorOPEN.width * 0.59, doorOPEN.height * 0.59);
}

void setup() {
  size(480, 480);

  doorCLOSE = loadImage("door_close.png");
  doorOPEN = loadImage("door_open.png");
  kagi = loadImage("kagi_ie.png");
  table = loadImage("table_syoumen_wood.png");
  kabe();
}

void draw() {


  if (key) {

    kagu();

  } else {

    kagu();
    kagi();
    doorclose();
  }
}

void mousePressed() {
  if (mouseX > 240) {
    key = true;
  } else if (mouseX < 240) {
    if (key) {

      kagu();
      dooropen();
      //※ドアを開ける処理
    }
  }
}
