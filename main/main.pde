int money;
int snus;
int dealer;
int fabrik;
int moneyPerSec;
int snusPerSec;

void setup() {
  size(1200, 800);
  rectMode(CENTER);
  money = 0;
  snus = 0;
  snusPerSec = 0;
  moneyPerSec = 0;
}

void draw() {
  background(100);

  if (snus == 0) {
    frameCount = 1000000000;
  }

  if (snus < 0) {
    snus = 0;
  }
  SPS();
  MPS();
  text();
}

void mousePressed() {
  musKlik();
}