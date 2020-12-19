PFont font;
//String s = "CLOUDY";



void setup(){
    size(700,350);
    font = loadFont("SansSerif.bold-48.vlw");
    textFont(font);
    background(255);
    
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

void draw()
{
  fill(255, 50, 200);
  text('a', random(width), random(height));
}

void keyPressed()
{
  background(255);
}
