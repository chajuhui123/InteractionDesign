PFont font;
//String s = "CLOUDY";



void setup(){
    size(800,800);
    font = loadFont("AGaramondPro-BoldItalic-48.vlw");
    textFont(font, 130);
    background(255); 
  }
  
void draw()
{
  background(255);
  translate(400, 400);
  for (int i = 0; i<6; i++){
    fill(0);
    textAlign(CENTER);
    pushMatrix();
    rotate(PI*i/3);
    text("S", 0, 0);
    popMatrix();
  }  
}
 
 
//void draw(){
//  background(255);
  
//  textSize(100);
//  color c = color(#8DC2DE);
  
//  for (int i=0; i<20; i+=1){
//    text(s,100+i, height/2-i);
//    fill(c, 255-i*10);
//    }

//}



// another one
//void draw()
//{}


//void keyPressed()
//{

//  fill(255, 50, 200,30);
//  if (key == 'a' || key == 'A')
//  {
//    text('A', random(width), random(height));
//  }
//  else if (key == 'b' || key == 'B')
//  {
//    text('B', random(width), random(height));
//  }
//  else {background(255);}
//}
