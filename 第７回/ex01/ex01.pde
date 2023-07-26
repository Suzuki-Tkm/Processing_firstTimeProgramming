PImage picture;
PImage img;
import processing.sound.*;
SoundFile sound; 

float scale;
void setup() {
  background(0, 0, 0);
  size(480, 480);

  picture = loadImage("rousoku.png");  
  img = loadImage("rousoku_fire.png");  
  sound = new SoundFile(this, "fire.mp3");
  image(picture, 160, 100);
}

void scaleImage(PImage img, float x, float y, float scale) {
  scale=0.9;
  image(img, x, y, img.width* scale, img.height* scale);
}
void draw() {
}

void mousePressed() {
  background(0, 0, 0);
  fill(249, 255, 82);
  circle(225, 170, 200);
  scaleImage(img, 165, 85, 0.9);
  sound.play();
}


//引用元：イラスト屋、音人
