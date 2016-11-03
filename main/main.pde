int money;
int snus;

void setup() {
  size(1200, 800);
  rectMode(CENTER);
}

void draw() {
  money = 100;
  snus = 50;

  textSize(50);
  text(money, 700, 100);
  text("Money: ", 500, 100);

  text(snus, 700, 200);
  text("Snulle: ", 500, 200);

  ellipse(1100, 725, 100, 100);
  ellipse(1100, 600, 100, 100);
  
  rect(150, 300, 100, 100);
  rect(150, 500, 100, 100);
}