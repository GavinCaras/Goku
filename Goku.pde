// Gavin Caras
// State Variables Assignment

//Global Variables
PImage MenuScreen;
PImage Background1;
PImage[] goku = new PImage[7];
int gokuCounter;
int state;
int background1Duration, background2Duration, background3Duration;
int lastTimeBackgroundChanged;
float WaitingTime;
String message;
import ddf.minim.*;
Minim minim;
AudioPlayer song;

void setup() {
  //Screen size
  size(640, 360);  
  state = 1;
  MenuScreen = loadImage("MenuScreen.gif");
  Background1 = loadImage("FirstBackground.jpg");
  minim = new Minim(this);  
  song = minim.loadFile("[Dragon Ball Z Kai] Opening 2 Japones.mp3");
  song.loop();
  background1Duration = 3000;
  background2Duration = 500;
  background3Duration = 3000;
  lastTimeBackgroundChanged = millis();
//} 
  //Background music
  //minim = new Minim(this);  
  //song = minim.loadFile("[Dragon Ball Z Kai] Opening 2 Japones.mp3");
  //song.loop();
  
  //Time duration before changing backgrounds
  //WaitingTime = 10000;
  
  //Goku's image
  gokuCounter = 0;
  
  for (int i=0; i<goku.length; i++) {
    goku[i] = loadImage( i + ".png");
  }
}
void draw() {

   if (state == 1) {
    background(MenuScreen);
    String message = "Press any key";
    fill(255);
    textSize(40);
    text(message, 180, 250);
   
  }
    else if (state == 2) {
    checkIfBackgroundSwitched();
    displayCorrectBackground();
    drawRunningGoku();    
  }
    else if (state == 3) {
    checkIfBackgroundSwitched();
    displayCorrectBackground();
    drawRunningGoku();    
  }
    else if (state == 4) {
    checkIfBackgroundSwitched();
    displayCorrectBackground();
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


void checkIfBackgroundSwitched() {
  if (state == 2) { //Background 3
    if (millis() > lastTimeBackgroundChanged + background3Duration) {
      state = 3;
      lastTimeBackgroundChanged = millis();
    }
  }
  
  else if (state == 3) { //Background 2
    if (millis() > lastTimeBackgroundChanged + background2Duration) {
      state = 4;
      lastTimeBackgroundChanged = millis();
    }
  }

  else if (state == 4) { //Background 1
  if (millis() > lastTimeBackgroundChanged + background1Duration) {
    state = 2;
    lastTimeBackgroundChanged = millis();
    }
  }
}

void displayCorrectBackground() {
  if (state == 2) {
    drawBackground1();
  } else if (state == 3) {
    drawBackground2();
  } else if (state == 4) {
    drawBackground3();
  }
}  

void drawBackground1() {
  background(Background1);
}

void drawBackground2() {
  fill(255, 255, 0);
}

void drawBackground3() {
  fill(0, 255, 0);
}

void drawRunningGoku(){
  //background(Background1);
    
  //WaitingTime = 10000;
  
  //gokuCounter = 0;
  //for (int i=0; i<goku.length; i++) {
    //goku[i] = loadImage( i + ".png");
  //}
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
  state = 2;
}

void keyPressed() {
 state = 2;
}