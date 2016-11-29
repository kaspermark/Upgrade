import processing.video.*;

import ddf.minim.*;

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

Minim minim;
AudioPlayer song;

Capture cam;

void setup() {
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }   
  
 minim = new Minim(this);
 
  // this loads mysong.wav from the data folder
  song = minim.loadFile("Money.mp3");
  
  size(1200, 800);
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

void draw() {
  
  background(p5);
  image(p6, 425, 25, 440, 240);


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
  
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 300, 300);
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
}

void mousePressed() {
  musKlik();
}