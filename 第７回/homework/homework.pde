PImage picture;
import processing.sound.*;
SoundFile sound; 

int x;
int y;
void setup() {
  size(480, 480);

  picture = loadImage("bicycle.png");  
  sound = new SoundFile(this, "bicycle_bell2.mp3");
}

void draw() {
  background(255, 255, 255);
  image(picture, x-100, y-100, picture.width*0.5, picture.height*0.5);
  x=x-5;
}

void mousePressed() {
  sound.play();  
  x=mouseX;
  y=mouseY;
}
