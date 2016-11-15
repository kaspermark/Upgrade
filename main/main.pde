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
  SPS();
  MPS();

  if (snus < 0) {
    snus = 0;
  }
  text();
}

void mousePressed() {
  musKlik();
}

void SPS() {
  if (frameCount % 60 == 0) {
    snus += snusPerSec;
  }
}

void MPS() {
  if (frameCount % 60 == 0) {
    money += moneyPerSec;
  }
}