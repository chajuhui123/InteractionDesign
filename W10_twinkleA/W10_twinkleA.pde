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
}
