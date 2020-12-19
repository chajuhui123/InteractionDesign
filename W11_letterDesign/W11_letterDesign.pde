PFont myFont;

void setup()
{
    size(800,800);
    myFont = loadFont("AGaramondPro-BoldItalic-48.vlw");
    textFont(myFont, 130);
    background(255); 
}

void draw()
{
  background(255);
  translate(width/2, height/2);
  
  for (int i=0; i<6 ; i++)
  {
    fill(0,0,0,150);
    textAlign(RIGHT);
    pushMatrix();
    rotate(PI*i/45);
    text("B",0,0);
    popMatrix();
    
  }
  
}
