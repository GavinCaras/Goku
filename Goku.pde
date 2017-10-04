// Gavin Caras
// State Variables Assignment
PImage background;
float WaitingTime;

void setup() {
  size(640, 360);
  WaitingTime = 3000;
}

void draw() {
  background = loadImage("FirstBackground.jpg");
  background(background);
  
  if (millis() > WaitingTime) {
      background(255, 0, 0);
  }
  else {
    fill(0);
  }
}