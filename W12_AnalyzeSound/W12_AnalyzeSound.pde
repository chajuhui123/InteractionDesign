
import ddf.minim.analysis.*;
import ddf.minim.*;

Minim       minim;
AudioPlayer after_you;
FFT         fft;

void setup()
{
  size(512, 200, P3D);
  
  minim = new Minim(this);
  
  after_you = minim.loadFile("After_You.mp3", 1024);
  after_you.loop();
  fft = new FFT( after_you.bufferSize(), after_you.sampleRate() );
  
}

void draw()
{
  background(0);
  stroke(255);

  fft.forward( after_you.mix );
  
  for(int i = 0; i < fft.specSize(); i++)
  {
    line( i, height, i, height - fft.getBand(i)*20 );
  }
}
