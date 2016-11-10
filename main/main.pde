int money;
int snus;
int snusClick;

void setup() {
  size(1200, 800);
  rectMode(CENTER);
}

void draw() {
  money = 0;
  snus = 0;

  textSize(50);
  text(money, 700, 100);
  text("Money: ", 500, 100);

  text(snus, 700, 200);
  text("Snus: ", 500, 200);

  ellipse(1100, 725, 100, 100);
  ellipse(1100, 600, 100, 100);

  rect(150, 300, 100, 100);
  rect(150, 500, 100, 100);
}

void mousePressed() {

  if (mouseX > 150 && mouseX < 300 && mouseY > 250 && mouseY < 400) {
    snus = snus + 1;
  }
}