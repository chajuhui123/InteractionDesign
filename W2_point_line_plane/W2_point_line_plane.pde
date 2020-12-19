void setup(){
  size(130,120);
  strokeWeight(2);
}

void draw(){
  //background
  background(255);
  stroke(#0066BC);
  rect(10,10,110,100);
  stroke(0,0,0);
  //J
  line(30, 30 ,30, 90);
  line(30, 90, 90, 90);
  line(90, 90, 90, 30);
  point(70, 30);
  point(75, 30);
  point(80, 30);
  point(85, 30);
  point(90, 30);
  point(95, 30);
  point(100, 30);
  point(105, 30);
  point(110, 30);
  //O
  fill(#FFCC12);
  ellipse(60,60,60,60);
  noFill();
  //Y
  line(30, 30 , 90, 60);
}
