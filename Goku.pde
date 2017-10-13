// Gavin Caras
// State Variables Assignment

//Global Variables
PImage MenuScreen;
PImage Background1;
PImage[] goku = new PImage[7];
int gokuCounter;
int x, y;
int state;
float WaitingTime;
String message;
import ddf.minim.*;
Minim minim;
AudioPlayer song;

void setup() {
  //Screen size
  size(640, 360);  
  state = 0;
  MenuScreen = loadImage("MenuScreen.gif");
  Background1 = loadImage("FirstBackground.jpg");
 
  //Background music
  //minim = new Minim(this);  
  //song = minim.loadFile("[Dragon Ball Z Kai] Opening 2 Japones.mp3");
  //song.loop();
  
  //Time duration before changing backgrounds
  //WaitingTime = 10000;
  
  //Goku's image
 // gokuCounter = 0;
  
  //for (int i=0; i<goku.length; i++) {
   // goku[i] = loadImage( i + ".png");
  //}
}

void draw() {

   if (state == 0) {
    background(MenuScreen);
    String message = "Press any key";
    fill(255);
    textSize(40);
    text(message, 180, 250);
   
  }
    else if (state == 1) {
    drawRunningGoku(); 
  }
    
 }

  //if (mousePressed == true){
    //noCursor();
 // } else {
  //  noCursor();
  //}
  
  //if (millis() > WaitingTime) {
      //background(255, 0, 0);
  //}
 // else {
   // fill(0);
 // }
  
//Making Goku move using the mouse
  //image(goku[gokuCounter], mouseX, 250);
  //if (frameCount % 5 == 0) {
    //gokuCounter++;
   // gokuCounter = gokuCounter % goku.length;
  //}
//}

void drawRunningGoku(){
   state = 1;
  background(Background1);
     
     minim = new Minim(this);  
  song = minim.loadFile("[Dragon Ball Z Kai] Opening 2 Japones.mp3");
  song.loop();
  WaitingTime = 10000;
  
  gokuCounter = 0;
  for (int i=0; i<goku.length; i++) {
    goku[i] = loadImage( i + ".png");
  }
  if (mousePressed == true){
    noCursor();
 } else {
    noCursor();
  }
  image(goku[gokuCounter], mouseX, 250);
  if (frameCount % 5 == 0) {
    gokuCounter++;
    gokuCounter = gokuCounter % goku.length;
  }
}
void keyPressed() {
 state = 1;

}