// Gavin Caras
// State Variables Assignment

//Global Variables
PImage background;
PImage[] goku = new PImage[7];
int gokuCounter;
float WaitingTime;

void setup() {
  //Screen size
  size(640, 360);  
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
  background = loadImage("FirstBackground.jpg");
  background(background);
  
  if (millis() > WaitingTime) {
      background(255, 0, 0);
  }
  else {
    fill(0);
  }
  //Making Goku move with the mouse cursor
  image(goku[gokuCounter], mouseX, mouseY);
  if (frameCount % 5 == 0) {
    gokuCounter++;
    gokuCounter = gokuCounter % goku.length;
  }
}