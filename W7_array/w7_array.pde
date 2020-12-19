int num = 100 ;
float[] x;
float[] y;

void setup() {
  size(740, 400);
  //background(0);
  x = new float[num];
  y = new float[num];
}
  
void draw(){
  background(0);
  for(int i = 0 ; i < num; i++){
    float x = random(0,width);
    float y = random(0, height);
    color c = color(random(255));
    fill(c);
    ellipse(x,y,10,10);
  }
  }
