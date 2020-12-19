int num = 60;

int[] x = new int[num];
int[] y = new int[num];

void setup(){
  size(500,500);
  noStroke();
}

void draw(){
  background(0);
  x[0] = mouseX;
  y[0] = mouseY;
  for (int i = x.length-1; i>0; i--  ){
    x[i] = x[i-1];
    y[i] = y[i-1];
    ellipse(x[i],y[i], 40, 40);}
  for(int i = 0; i<x.length; i++){
    fill(i*2);
    ellipse(x[i],y[i], 40, 40);}
}
