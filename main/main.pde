int money;
int snus;

void setup() {
  size(1200, 800);
  rectMode(CENTER);
  money = 0;
  snus = 0;
}

void draw() {
  background(100);

  if (snus < 0) {
    snus = 0;
  }

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

  if (mouseX > 1050 && mouseX < 1150 && mouseY > 675 && mouseY < 775) {
    snus = snus + 1;
  }

  if (mouseX > 1050 && mouseX < 1150 && mouseY > 550 && mouseY < 650) {
    if (snus != 0) {
      money = money + 1;
      snus = snus - 1;
    }
  }
}