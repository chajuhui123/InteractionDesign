import processing.video.*;
int videoScale = 8;
int cols, rows;
Capture video;

void setup()
{
  size(640, 480);
  frameRate(30);
  
  cols = width/videoScale;
  rows = height/videoScale;
  
  video = new Capture(this, width, height);
  video.start();

}

void draw()
{
  if(video.available())
  {
    video.read();
  }
  video.loadPixels();
  image(video, 0, 0);
  
  for(int i = 0; i < cols; i++)
  {
    for(int j = 0 ; j <rows ; j++)
    {
      int x = i * videoScale;
      int y = j * videoScale;
      color c = video.pixels[(video.width-x-1)+y*video.width];
      float sz = (brightness(c)/255.0)*videoScale;
      fill(c);
      stroke(0);
      rect(x, y, sz, sz);
    }
  }

}
