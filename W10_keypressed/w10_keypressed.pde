void setup()
{
  size(500, 500);
}


void draw()
{
  int x = mouseX;
  int y = mouseY;
  int r = (int)random(4, 20);
  
  background(0);
  noStroke();
  fill(255);
  
  if (key == 'a' || key == 'A'){
    for (int i = 0 ; i < 255 ; i += 20)
    {
      fill(i);
      ellipse(random(x-20, x+20), random(y-180, y-120), r, r);
      ellipse(random(x-40, x), random(y-120, y-80), r, r);
      ellipse(random(x-60, x-20), random(y-60, y), r, r);
      ellipse(random(x-80, x-40), random(y-20, y+60), r, r);
      ellipse(random(x-100, x-60), random(y+60, y+110), r, r);
      ellipse(random(x-20, x+20), random(y, y+60), r, r);
      ellipse(random(x, x+40), random(y-120, y-60), r, r);
      ellipse(random(x+20, x+60), random(y-60, y), r, r);
      ellipse(random(x+40, x+80), random(y, y+60), r, r);
      ellipse(random(x+60, x+100), random(y+60, y+120), r, r);
    }
  }
  
  if (key == 'O' || key == 'o'){
    for (int i = 0 ; i < 255 ; i += 20)
    {
      fill(i);
      ellipse(random(x-50, x+50), random(y-140, y-100), r, r);
      ellipse(random(x-50, x+50), random(y+100, y+140), r, r);
      
      ellipse(random(x-90, x-50), random(y-100, y+100), r, r);
      ellipse(random(x+50, x+90), random(y-100, y+100), r, r);
    }
  }
  
  if (key == 'Y' || key == 'y'){
    for (int i = 0 ; i < 255 ; i += 20)
    {
      fill(i);
      //
      ellipse(random(x-120, x-80), random(y- 110, y- 60), r, r);
      ellipse(random(x-80, x-40), random(y- 80, y- 30), r, r);
      ellipse(random(x-40, x), random(y- 50, y), r, r);
      
      //
      ellipse(random(x+80, x+120), random(y- 110, y- 60), r, r);
      ellipse(random(x+40, x+80), random(y- 80, y- 30), r, r);
      ellipse(random(x, x+40), random(y- 50, y), r, r);
      
      //
      ellipse(random(x-20, x+20), random(y, y+60), r, r);
      ellipse(random(x-20, x+20), random(y+60, y+120), r, r);
      ellipse(random(x-20, x+20), random(y+120, y+180), r, r);
    }
  }

  if (key == 'J' || key == 'j'){
    for (int i = 0 ; i < 255 ; i += 20)
    {
      fill(i);
      
      //
      ellipse(random(x-100, x - 50), random(y-120, y-80), r, r);
      ellipse(random(x-50, x), random(y-120, y-80), r, r);
      ellipse(random(x, x+50), random(y-120, y-80), r, r);
      ellipse(random(x+50, x+100), random(y-120, y-80), r, r);
      
      //
      ellipse(random(x-20, x +20), random(y-80, y), r, r);
      ellipse(random(x-20, x +20), random(y, y+70), r, r);
      
      //
      ellipse(random(x-120, x -80), random(y+20, y+70), r, r);
      ellipse(random(x-100, x -50 ), random(y+70, y+110), r, r);
      ellipse(random(x-50, x), random(y+70, y+110), r, r);
    }
  }



}
