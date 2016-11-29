int money;
int snus;
int dealer;
int fabrik;
int moneyPerSec;
int snusPerSec;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;

void setup() {
  size(1200, 800);
  rectMode(CENTER);
  money = 0;
  snus = 0;
  snusPerSec = 0;
  moneyPerSec = 0;
  p1=loadImage("snus.png");
  p2=loadImage("Dealer.png");
  p3=loadImage("money.png");
  p4=loadImage("factory.png");
  p5=loadImage("background.png");
  p6=loadImage("board.png");
}

void draw() {
  background(p5);
  image(p6,425,25,440,240);

  
if (snus < 0) {
      snus = 0;
    }
  ifs();
  SPS();
  MPS();
  text();
  image(p1, 1050, 675, 100, 100);
  image(p2, 100, 250, 100, 100);
  image(p3, 1050, 550, 100, 100);
  image(p4, 100, 450, 100, 100);
}

void mousePressed() {
  musKlik();
}