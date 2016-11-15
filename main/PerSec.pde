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