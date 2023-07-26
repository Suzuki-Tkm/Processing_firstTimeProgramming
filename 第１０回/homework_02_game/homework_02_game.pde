PImage desk;
PImage keys;
PImage door;
PImage door_open;
boolean Key=false;
boolean Door=false;
int scene=1;
void setup() {

  size(480, 480);
  background(255);
  desk = loadImage("table.png");  
  keys=loadImage("keys.png");
  door=loadImage("door.png");
  door_open=loadImage("door_open.png");
  textFont(createFont("SansSerif", 24, true));
}

void draw() {

  if (scene==1) {
    scene1back();
    image(desk, 230, 300, desk.width*0.5, desk.height*0.5);
    image(keys, 300, 310, keys.width*0.08, keys.height*0.08);
  } else if (scene==2) {
    scene2back();
    image(door, 110, 147, door.width*0.3, door.height*0.3);
  } 
  if (scene==1) {
    if (Key) {
      scene1back();
      image(desk, 230, 300, desk.width*0.5, desk.height*0.5);
      fill(70, 70, 70);
      text("鍵を発見した！", 40, 450);
    } else {
      scene1back();
      image(desk, 230, 300, desk.width*0.5, desk.height*0.5);
      image(keys, 300, 310, keys.width*0.08, keys.height*0.08);
    }
  } 
  if (Door) {
    scene2back();
    image(door_open, -10, 147, door_open.width*0.66, door_open.height*0.66);
    fill(70, 70, 70);
    text("ドアが開いた！", 40, 450);
  }
}
void mousePressed() {

  if ( scene==1) {
    if (mouseX<=240) {
      scene=2;
    } else if (mouseX>=300 && mouseX<=345 && mouseY>=310 && mouseY<=355) {
      Key=true;
    }
  } else if (scene==2) {
    if (mouseX>=240) {
      scene=1;
    } else if (mouseX>=120  && mouseX<240 && mouseY>=155 && mouseY<=360) {
      if (Key) {
        Door=true;
      }
    }
  }
}

void scene1back() {
  background(255);
  fill(255, 240, 210);
  rect(0, 60, 380, 300);
  quad(380, 60, 380, 360, 480, 480, 480, 0);
  fill(0, 0, 255);
  triangle(10, 240, 30, 225, 30, 255);
}
void scene2back() {
  background(255);
  fill(255, 240, 210);
  rect(100, 60, 480, 300);
  quad(100, 60, 100, 360, 0, 480, 0, 0);
  fill(0, 0, 255);
  triangle(470, 240, 450, 225, 450, 255);
}
