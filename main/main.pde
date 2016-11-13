int money;
float snus;
float dealer;
float fabrik;
float moneyPerSec;
float snusPerSec;

Dealer myDealer = new Dealer(0.4);

void setup() {
  size(1200, 800);
  rectMode(CENTER);
  money = 0;
  snus = 0;
  dealer = 0;
  fabrik = 0;
}

void draw() {
  background(100);

  if (snus < 0) {
    snus = 0;
  }
text();
}

void mousePressed(){
musKlik();
}