class Dealer {

  float xPos;
  float yPos;

  Dealer() {
  }

  void display() {
    rectMode(CENTER);
    rect(150, 300, 100, 100);
  }

  void getMoney() {
    if (mouseX > 100 && mouseX < 200 && mouseY > 250 && mouseY < 350) {
      money = money + 1;
    }
  }
}