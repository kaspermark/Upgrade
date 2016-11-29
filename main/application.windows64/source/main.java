import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class main extends PApplet {

int money;
int snus;
int dealer;
int fabrik;
int moneyPerSec;
int snusPerSec;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;

public void setup() {
  
  rectMode(CENTER);
  money = 0;
  snus = 0;
  snusPerSec = 0;
  moneyPerSec = 0;
  p1=loadImage("snus.png");
  p2=loadImage("Dealer.png");
  p3=loadImage("money.png");
  p4=loadImage("factory.png");
  p5=loadImage("background.png");
  p6=loadImage("board.png");
}

public void draw() {
  background(p5);
  image(p6,425,25,440,240);

  
if (snus < 0) {
      snus = 0;
    }
  ifs();
  SPS();
  MPS();
  text();
  image(p1, 1050, 675, 100, 100);
  image(p2, 100, 250, 100, 100);
  image(p3, 1050, 550, 100, 100);
  image(p4, 100, 450, 100, 100);
}

public void mousePressed() {
  musKlik();
}
public void SPS() {
  if (frameCount % 60 == 0) {
    snus += snusPerSec;
  }
}



public void MPS() {
  if (frameCount % 60 == 0) {
    money += moneyPerSec;
  }
}

public void ifs() {
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
      moneyPerSec = dealer;
    }
  }
}
public void text() {
  textSize(24);
  fill(0xff006CFF);
  text(dealer, 175, 385);
  text(fabrik, 175, 585);

  textSize(50);
  fill(255);
  text("Money: " + money, 500, 100);

  text("Snus: " + snus, 500, 200);

  //her trykker man for at f\u00e5 mere snus og penge
  rect(1100, 725, 100, 100);
  rect(1100, 600, 100, 100);

  //her trykker man for at f\u00e5 flere upgrades
  rect(150, 300, 100, 100);
  rect(150, 500, 100, 100);
}
public void musKlik() {
  //k\u00f8be en dealer
  if (mouseX > 100 && mouseX < 200 && mouseY > 250 && mouseY < 350) {
    if (money >= 10) {
      money = money - 10;
      dealer = dealer + 1;
      moneyPerSec = moneyPerSec + 1;
      
    }
  }

  //k\u00f8b en fabrik
  if (mouseX > 100 && mouseX < 200 && mouseY > 450 && mouseY < 550) {
    if (money >= 15) {
      fabrik = fabrik + 1;
      money = money - 15;
      snusPerSec = snusPerSec + 1;
    }
  }

  //Lave en snus
  if (mouseX > 1050 && mouseX < 1150 && mouseY > 675 && mouseY < 775) {
    snus = snus + 1;
  }
  //s\u00e6lge snus f\u00e5 money
  if (mouseX > 1050 && mouseX < 1150 && mouseY > 550 && mouseY < 650) {
    if (snus != 0) {
      money = money + 1;
      snus = snus - 1;
    }
  }
}
  public void settings() {  size(1200, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "main" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
