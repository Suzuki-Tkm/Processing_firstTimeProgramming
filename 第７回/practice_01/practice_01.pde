PImage picture;  //(1)

int x = 240;
int y = 240;

void setup() {
  size(480, 480);

  picture = loadImage("movie.png");  //(2)
}

void draw() {
  background(255, 255, 255);

  image(picture, x, y, picture.width*0.1, picture.height*0.1);  //(3)
  x = x + 1;
}
