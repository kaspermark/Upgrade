void musKlik() {
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
      money = money + 1;
      snus = snus - 1;
    }
  }
}