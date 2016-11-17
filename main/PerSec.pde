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

void ifs() {
  if (frameCount % 60 == 0) {
    if (money < 0) {
      money = 0;
    }

    if (dealer > 0) {
      snus = snus - 1;;
    }

    if (snus < 0) {
      moneyPerSec = 0;
    }
    if (snus > 0) {
    }
  }
}