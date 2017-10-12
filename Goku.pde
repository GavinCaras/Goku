// Gavin Caras
// State Variables Assignment

//Global Variables
PImage Firstbackground;
PImage[] goku = new PImage[7];
int gokuCounter;
float WaitingTime;
import ddf.minim.*;
Minim minim;
AudioPlayer song;

void setup() {
  //Screen size
  size(640, 360);  
  
  //Background music
  minim = new Minim(this);  
  song = minim.loadFile("[Dragon Ball Z Kai] Opening 2 Japones.mp3");
  song.loop();
  
  //Time duration before changing backgrounds
  WaitingTime = 10000;
  
  //Goku's image
  gokuCounter = 0;
  
  for (int i=0; i<goku.length; i++) {
    goku[i] = loadImage( i + ".png");
  }
}

void draw() {
  //First Background
  Firstbackground = loadImage("FirstBackground.jpg");
  background(Firstbackground);
  
  if (mousePressed == true){
    noCursor();
  } else {
    noCursor();
  }
  
  if (millis() > WaitingTime) {
      background(255, 0, 0);
  }
  else {
    fill(0);
  }
  
//Making Goku move using the mouse
  image(goku[gokuCounter], mouseX, mouseY);
  if (frameCount % 5 == 0) {
    gokuCounter++;
    gokuCounter = gokuCounter % goku.length;
  }
}