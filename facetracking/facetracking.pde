import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

// Initialize Variables
PFont myFont;
String[] ment = {"#ILoveMySelf", "#imHere", "#life4life", "#oftheHour"};
String background_ment = "#HAPPY #SAD #ANGRY #SOSO #SCARED #WITH #INSTAGRAM";

int imgLocW = 190;
int imgLocH = 280;

int x = 0 ;
int y = 0 ;

int Xspeed = 2;
int Yspeed = 1;

void setup() {
  size(700,800);
  
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  
  myFont = loadFont("ProcessingSansPro-Semibold-30.vlw");
  textFont(myFont, 40);
  
  video.start();
}


void draw() {
  
  //main Screen
  background(0,0,0);
  
  noStroke();
  fill(#FFFFFF, 30);
  ellipse(mouseX, mouseY, 100, 100);
  
  fill(#FFFFFF);
  stroke(#FFFFFF);
  line(0, height/2 - 10, 100, height/2 - 10);
  line(width- 100, height/2 - 10, width, height/2 - 10);
  
  text("Press 'I', 'N', 'S', 'T','A' ", width/2 -180, height/2);
  
  // I, T : only text
  if (key == 'I' || key == 'i' || key == 'T' || key == 't')
  {
    background(0,0,0);
    for (int i = 0 ; i <= 810; i+= 50 ) // Multiple letters are made and moved.
    {
    fill(255, 255, 255);
    text(background_ment, x, 10 + y + i);
    }
    move();
    flow();  
  }
 
  
  // N, A : video
  if (key == 'n' || key == 'N'|| key == 'A' || key == 'a')
  {
    background(0,0,0);
    for (int i = 0 ; i <= 810; i+= 50 ) // Multiple letters are made and moved.
    {
      fill(255, 255, 255);
      text(background_ment, x, 10 + y + i);
    }
    move();
    flow();
    
    // center image : The user's video is played.
    opencv.loadImage(video);
    
    image(video, imgLocW,imgLocH);
    Rectangle[] faces = opencv.detect();
    
    // Recognizing the user's face, letters appear on the face.
    for (int i = 0; i < faces.length; i++) {
    float x = random(0, 3);
    fill(238, 119, 85);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+30 + imgLocH);
    fill(225, 91, 104);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+40 + imgLocH);
    fill(183, 50, 159);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+50 + imgLocH);
    fill(134,61,204);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+60 + imgLocH);
    }
  }
  
  // S : gray scale
  if (key == 'S' || key == 's')
  {
    background(0,0,0);
    for (int i = 0 ; i <= 810; i+= 50 ) // Multiple letters are made and moved.
    {
      fill(255, 255, 255);
      text(background_ment, x, 10 + y + i);
    }
    move();
    flow();
    
    // center image : The user's video is played.
    opencv.loadImage(video);
    
    image(video, imgLocW,imgLocH);
    Rectangle[] faces = opencv.detect();
    
    // The video quality is set to slightly black and has a border.
    fill(#000000, 99);
    rect(imgLocW,imgLocH,640/2, 480/2);
    
    // Recognizing the user's face, letters appear on the face.
    for (int i = 0; i < faces.length; i++) {
    float x = random(0, 3);
    fill(238, 119, 85);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+30 + imgLocH);
    fill(225, 91, 104);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+40 + imgLocH);
    fill(183, 50, 159);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+50 + imgLocH);
    fill(134,61,204);
    text(ment[round(x)],faces[i].x + imgLocW, faces[i].y+60 + imgLocH);
    }
  }

}

// function

void move(){
  x = x + Xspeed ;
  y = y + Yspeed ;
  //println(x,y); // To check the x, y
}

void flow(){
  // moving from side to side.
  if ((x > 0) || (x < -330)){
    Xspeed = Xspeed * -1;
  }
  // moving up and down.
  if ((y <= -25) || (y >= 25)  )
  {
    Yspeed = Yspeed * -1;
    
  }
}

void captureEvent(Capture c) {
  c.read();
}
