int money;
float snus;
float dealer;
float fabrik;
float moneyPerSec;
float snusPerSec;

Dealer myDealer = new Dealer(0.4);

void setup() {
  frameRate(60);
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

  textSize(24);
  text(dealer, 175, 400);
  text(fabrik, 175, 600);

  textSize(50);
  text(money, 700, 100);
  text("Money: ", 500, 100);

  text(snus, 700, 200);
  text("Snus: ", 500, 200);

  //her trykker man for at få mere snus og penge
  rect(1100, 725, 100, 100);
  rect(1100, 600, 100, 100);

  //her trykker man for at få flere upgrades
  rect(150, 300, 100, 100);
  rect(150, 500, 100, 100);
}

void mousePressed() {
  //købe en dealer
  if (mouseX > 100 && mouseX < 200 && mouseY > 250 && mouseY < 350) {
    if (money >= 10) {
      dealer = dealer + 1;
    }
  }
  
  //køb en fabrik
  if (mouseX > 100 && mouseX < 200 && mouseY > 450 && mouseY < 550) {
    if (money >= 15) {
      
    }
  }

  //Lave en snus
  if (mouseX > 1050 && mouseX < 1150 && mouseY > 675 && mouseY < 775) {
    snus = snus + 1;
  }
  //sælge snus få money
  if (mouseX > 1050 && mouseX < 1150 && mouseY > 550 && mouseY < 650) {
    if (snus != 0) {
      money = money + 4;
      snus = snus - 1;
    }
  }
}