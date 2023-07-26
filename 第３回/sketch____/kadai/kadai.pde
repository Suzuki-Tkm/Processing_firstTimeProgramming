void setup() {
  size(720, 480);
  background(255, 255, 255);
  line(240, 0, 240, 480);
  line(480, 0, 480, 480);
  line(0, 240, 720, 240);
  int x, y;

//NE21-1228F
  x = 120;
  y = 120;
  
  stroke(0,0,0);
  strokeWeight(8);
  line(x-90,y-20,x-50,y);
  line(x+10,y,x+50,y-20);
  line(x-60,y+40,x-70,y+100);
  line(x+30,y+100,x+20,y+40);
  strokeWeight(1);
  noStroke();
  fill(250,237,86);
  circle(x-20,y-50,100);
  fill(46,149,255);
  circle(x-20,y+50,100);
  fill(250,237,86);
  rect(x-70,y-50,100,100);
  stroke(0,0,0);
  fill(0,0,0);
  rect(x-70,y-50,30,20);
  rect(x-10,y-50,40,20);
  fill(108,106,86);
  circle(x-20,y-40,60);
  fill(255,255,255);
  circle(x-20,y-40,50);
  fill(209,140,84);
  circle(x-20,y-40,20);
  fill(0,0,0);
  circle(x-20,y+10,10);
  line(x-20,y-110,x-20,y-90);
  noStroke();
  fill(46,149,255);
  rect(x-70,y+30,100,20);
  
  // NE21-1258E yamazaki tomona
  x = 360;
  y = 120;
  
  fill(#F5B7F1);
  noStroke();
  ellipse(x-60,y-40,100,90);
  triangle(x-85,y-95,x-70,y-75,x-90,y-70);
  triangle(x-35,y-95,x-30,y-70,x-50,y-75);
  fill(#C179BD);
  triangle(x-36,y-90,x-34,y-75,x-45,y-77);
  triangle(x-84,y-90,x-76,y-78,x-86,y-75);
  fill(#F2A4ED);
  ellipse(x-60,y-20,50,30);
  fill(#C179BD);
  ellipse(x-70,y-20,10,5);
  ellipse(x-50,y-20,10,5);
  fill(#F5B7F1);
  stroke(0,0,0);
  line(x-90,y-40,x-75,y-50);
  line(x-45,y-50,x-30,y-40);
  
  //NE21-1248J yosida takeru
  
  x = 600;
  y = 120;
  
  //皿
  
  fill(255, 204, 102);//皿の色
  circle(x+30, y+33, 165);//皿
  circle(x+30, y+33, 145);//皿模様
  
  //棒
  
  line(x-5, y+105, x+63, y-27);
  
  
  //団子
  
  noStroke();
  fill(51, 255, 51);//ピンク
  circle(x+20, y+55, 40);//団子1
  fill(254, 254, 254);//白
  circle(x+38, y+20, 40);//団子2
  fill(255, 204, 255);//緑
  circle(x+57, y-15, 40);//団子3
  stroke(0, 0, 0);
  noFill();//色リセット
  
  //NE21-1238B kawakubo ituki
  
  
  x=120;
  y=360;
  
  noStroke();
  fill(0, 0, 0);
  ellipse(x, y, 120, 100);
  triangle(x - 60, y - 60, x - 60, y, x - 10, y - 45);
  triangle(x + 60, y - 60, x + 60, y, x + 10, y - 45);
  fill(255, 255, 255);
  circle(x - 10, y - 10, 10);
  circle(x + 10, y - 10, 10);//moyou
  fill(255, 255, 0);
  ellipse(x - 30, y + 10, 40, 25);  
  ellipse(x + 30, y + 10, 40, 25);  
  fill(0, 0, 0);
  ellipse(x - 30, y + 10, 15, 25);
  ellipse(x + 30, y + 10, 15, 25);
  fill(255, 153, 204);
  triangle(x - 10, y + 40, x, y + 30, x + 10, y +40);
  stroke(128, 128, 128);
  strokeWeight(3);
  line(x - 35, y + 35, x - 60, y + 40);
  line(x + 35, y + 35, x + 60, y + 40);
  line(x - 40, y + 25, x - 70, y + 30);
  line(x + 40, y + 25, x + 70, y + 30);
  
  x=360;
  y=360;
  
  stroke(0,0,0);
  strokeWeight(8);
  line(x-90,y-20,x-50,y);
  line(x+10,y,x+50,y-20);
  line(x-60,y+40,x-70,y+100);
  line(x+30,y+100,x+20,y+40);
  strokeWeight(1);
  noStroke();
  fill(250,237,86);
  circle(x-20,y-50,100);
  fill(46,149,255);
  circle(x-20,y+50,100);
  fill(250,237,86);
  rect(x-70,y-50,100,100);
  stroke(0,0,0);
  fill(0,0,0);
  rect(x-70,y-50,30,20);
  rect(x-10,y-50,40,20);
  fill(108,106,86);
  circle(x-20,y-40,60);
  fill(255,255,255);
  circle(x-20,y-40,50);
  fill(209,140,84);
  circle(x-20,y-40,20);
  fill(0,0,0);
  circle(x-20,y+10,10);
  line(x-20,y-110,x-20,y-90);
  noStroke();
  fill(46,149,255);
  rect(x-70,y+30,100,20);
  
  
  x=600;
  y=360;
  
  stroke(0,0,0);
  strokeWeight(8);
  line(x-90,y-20,x-50,y);
  line(x+10,y,x+50,y-20);
  line(x-60,y+40,x-70,y+100);
  line(x+30,y+100,x+20,y+40);
  strokeWeight(1);
  noStroke();
  fill(250,237,86);
  circle(x-20,y-50,100);
  fill(46,149,255);
  circle(x-20,y+50,100);
  fill(250,237,86);
  rect(x-70,y-50,100,100);
  stroke(0,0,0);
  fill(0,0,0);
  rect(x-70,y-50,30,20);
  rect(x-10,y-50,40,20);
  fill(108,106,86);
  circle(x-20,y-40,60);
  fill(255,255,255);
  circle(x-20,y-40,50);
  fill(209,140,84);
  circle(x-20,y-40,20);
  fill(0,0,0);
  circle(x-20,y+10,10);
  line(x-20,y-110,x-20,y-90);
  noStroke();
  fill(46,149,255);
  rect(x-70,y+30,100,20);
  }
