import processing.sound.*;

SoundFile sound;  //(1)

void setup() {
  size(480, 480);

  sound = new SoundFile(this, "music.mp3");  //(2)
}

void draw() {  //mousePressed() を機能させるために必要
}

void mousePressed() {
  sound.play();  //(3)
}
