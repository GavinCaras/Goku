// Gavin Caras
// State Variables Assignment

//Global Variables.
PImage MenuScreen;
PImage Background1;
PImage Background2;
PImage[] goku = new PImage[7];
int gokuCounter;
int state;
float WaitingTime;
String message;
import ddf.minim.*;
Minim minim;
AudioPlayer song;

void setup() {
  //Screen size.
  size(640, 360);  
  state = 1;

  //Loading background images.
  MenuScreen = loadImage("MenuScreen.gif");
  Background1 = loadImage("FirstBackground.jpg");
  Background2 = loadImage("SecondBackground.png");

  //Loading the background music
  minim = new Minim(this);  
  song = minim.loadFile("[Dragon Ball Z Kai] Opening 2 Japones.mp3");
  song.loop(); 

  //Time duration before changing backgrounds.
  WaitingTime = 20000;
  
  //Goku's image.
  gokuCounter = 0;
    for (int i=0; i<goku.length; i++) {
    goku[i] = loadImage( i + ".png");
  }
}
void draw() {
   //Menu screen.
   if (state == 1) {
    background(MenuScreen);
    String message = "Press any key";
    fill(255);
    textSize(40);
    text(message, 180, 250);
   }
    //First background.
   else if (millis() > WaitingTime) {
     background(Background1);
     drawRunningGoku();
   }
   //Second background.
   else if (millis() < WaitingTime) {
     background(Background2);
     drawRunningGoku();
 }

}

//Function in running animated Goku.
void drawRunningGoku(){
  //Removes the mouse cursor.
  if (mousePressed == true){
    noCursor();
 } else {
    noCursor();
  }
  //Animating Goku images
  image(goku[gokuCounter], mouseX, 250);
  if (frameCount % 5 == 0) {
    gokuCounter++;
    gokuCounter = gokuCounter % goku.length;
  }
  state = 2;
}

//Gets to state 2 when any keys are pressed.
void keyPressed() {
 state = 2;
}