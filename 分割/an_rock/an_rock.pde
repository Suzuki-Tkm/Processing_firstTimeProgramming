int number1;
int number2;
int number3;
int r=255,g,b;
void setup() {
  size(480, 480);
  textFont(createFont("SansSerif", 24, true));
}
void draw() {
  background(255);
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
  fill(r,g,b);
  rect(160,400, 160, 50);
  textSize(40);
  fill(0);
  text("(66+34)×81は???", 70, 50);
  textSize(30);
  text("ロック解除", 165, 440);
  textSize(60);
  text(number1, 120, 260);
  text(number2, 220, 260);
  text(number3, 320, 260);
}

void mousePressed() {
  if (mouseX>=120 && mouseX<=160 && mouseY>=150 && mouseY<=170) {
    number1=number1+1;
    if (number1==10) {
      number1=0;
    }
  }
  if (mouseX>=220 && mouseX<=260 && mouseY>=150 && mouseY<=170) {
    number2=number2+1;
    if (number2==10) {
      number2=0;
    }
  }
  if (mouseX>=320 && mouseX<=360 && mouseY>=150 && mouseY<=170) {
    number3=number3+1;
    if (number3==10) {
      number3=0;
    }
  }

  if (mouseX>=120 && mouseX<=160 && mouseY>=310 && mouseY<=330) {
    number1=number1-1;
    if (number1==-1) {
      number1=9;
    }
  }
  if (mouseX>=220 && mouseX<=260 && mouseY>=310 && mouseY<=330) {
    number2=number2-1;
    if (number2==-1) {
      number2=9;
    }
  }
  if (mouseX>=320 && mouseX<=360 && mouseY>=310 && mouseY<=330) {
    number3=number3-1;
    if (number3==-1) {
      number3=9;
    }
  }
  if(mouseX>=160 && mouseX<=320 && mouseY>=400 && mouseY<=450){
  if(number1==2 && number2==4 && number3==0){
    //ドアロック解除
   r=80;
   g=255;
   b=100;
  }
  }
}
