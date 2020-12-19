PFont myFont;

void setup()
{
  size(800,800);
  myFont = loadFont("PalatinoLinotype-Bold-48.vlw");
  textFont(myFont, 200);
}

void draw()
{
  float offset1 = map(mouseX, 0, width, -100, 100);
  float offset2 = map(mouseY,0,height,-100,100);
  
  background(255);
  
  translate(400, 400);
  for (int i = 0 ; i < 6; i++)
  {
    fill(#F5E31B, 95);
    textAlign(CENTER);
    pushMatrix();
    rotate(PI*i/3);
    text("JOY", offset1, offset2);
    popMatrix();
  }
  
  
}






//void draw()
//{
//  background(255);
//  stroke(0);
//  rectMode(CENTER);
//  translate(width/2, height/2);
  
//  pushMatrix();
//  rotate(frameCount/100.0);
//  rect(0,0, 60,60);
//  popMatrix();
  
//  pushMatrix();
//  translate(150, 150);
//  rotate(frameCount/100.0);
//  rect(0,0,60,60);
//  popMatrix();

//}

//void draw()
//{
//  background(255);
  
//  pushMatrix();
//  rectMode(CENTER);
//  translate(width/2, height/2);
//  rotate(frameCount/100.0);
//  rect(0, 0, 60, 60);
//  rotate(PI/4);
//  rect(0, 0, 60, 60);
//  popMatrix();
  
  
//}
