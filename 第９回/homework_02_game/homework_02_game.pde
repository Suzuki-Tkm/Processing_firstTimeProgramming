PImage desk;
PImage keys;
PImage door;
PImage door_open;
boolean Key=false;

void setup() {

  size(480, 480);
  background(200, 250, 215);
  desk = loadImage("table.png");  
  keys=loadImage("keys.png");
  door=loadImage("door.png");
  door_open=loadImage("door_open.png");
  fill(255, 240, 210);
  rect(0, 60, 380, 300);
  quad(380, 60, 380, 360, 480, 480, 480, 0);
}
void draw() {

  if (Key) {
    image(desk, 230, 300, desk.width*0.5, desk.height*0.5);
  } else {
    image(desk, 230, 300, desk.width*0.5, desk.height*0.5);
    image(keys, 300, 310, keys.width*0.08, keys.height*0.08);
    image(door, 50, 147, door.width*0.3, door.height*0.3);
  }
}

void mousePressed() {

  if (mouseX>=240) {
    Key=true;
  } else if (mouseX<=240) {
    if (Key) {
      image(door_open, -60, 147, door_open.width*0.66, door_open.height*0.66);
    }
  }
}
