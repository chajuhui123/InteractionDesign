PFont myFont;
import processing.pdf.*;

void setup()
{
    size(800,800);
    myFont = loadFont("BodoniMT-140.vlw");
    textFont(myFont, 272);
    background(255);
    beginRecord(PDF, "pattern.pdf"); // when using beginRecord, we must use createFont
    
}

void draw()
{
  background(255);
  translate(width/2, height/2);
  // Changing i, j changes the x-axis y-axis. The spacing between letters changes.
  for(int i = 0; i < 800; i=i+200){
    for (int j=0; j<800 ; j = j+200){
      for(int k = 0; k < 6; k ++)
      {
        fill(0,0,0,150);
        textAlign(CENTER);
        pushMatrix();
        rotate(PI*k/3);
        text("I", i, j);
        popMatrix();
     }
    }
  }
  endRecord();
}
