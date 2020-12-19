void setup() {
  size(600, 200);
  fill(0);
  stroke(0);
}

void draw() {
  background(255);
  arc(50,50,70,70,0, HALF_PI);
  arc(150,50,70,70,0, PI);
  arc(250,50,70,70,0, TWO_PI);
  arc(350,50,70,70, QUARTER_PI, PI+QUARTER_PI);
}
