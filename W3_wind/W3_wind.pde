void setup(){
  size(600, 200);
  noFill();
  stroke(0);
}

void draw(){
  background(255);
  // fist letter
  bezier(10, 20, 30, 10, 30, 30, 50, 20);
  bezier(10, 30, 30, 20, 30, 40, 50, 30);
  bezier(10, 40, 30, 30, 30, 50, 50, 40);
  bezier(10, 50, 30, 40, 30, 60, 50, 50);
  bezier(10, 60, 30, 50, 30, 70, 50, 60);
  line(70,10,70,80);
  line(70,40,80,40);
  
  // flow
  bezier(50, 20, 70, 10, 80, 30, 100, 20);
  bezier(50, 60, 70, 50, 80, 70, 100, 60);
  
  //second letter
  bezier(100, 20, 120, 10, 120, 30, 140, 20);
  line(140, 20, 140, 40);
  bezier(100, 40, 120, 30, 120, 50, 140, 40);
  bezier(100, 60, 120, 50, 120, 70, 140, 60);
  line(160, 10, 160, 70);
  line(160, 40, 170, 40);
  
  beginShape();
  vertex(130, 70);
  vertex(130, 100);
  vertex(170, 100);
  vertex(170, 70);
  endShape(CLOSE);

}
