void text(){
textSize(24);
  text(dealer, 175, 400);
  text(fabrik, 175, 600);

  textSize(50);
  text("Money: " + money, 500, 100);

  text("Snus: " + snus, 500, 200);

  //her trykker man for at få mere snus og penge
  rect(1100, 725, 100, 100);
  rect(1100, 600, 100, 100);

  //her trykker man for at få flere upgrades
  rect(150, 300, 100, 100);
  rect(150, 500, 100, 100);
}