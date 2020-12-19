

// 1-way
// PFont font;
//void setup(){
//  size (600, 200);
//  font = loadFont("Gungsuh-48.vlw");
//  textFont(font);
//}

//void draw(){
//  background(255);
//  fill(0);
//  textSize(48);
//  text("Hi there,",30,100);
//}



// way-2
//PFont font;

//String s = "Setting text box size will change line automatic";

//void setup(){
//  size(600,200);
//  font = createFont("Gungsuh", 24);
//  textFont(font);}
  
//void draw(){
//  background(255);
  
//  fill(0);
//  noStroke();
//  text(s, 20, 50);
//  text(s, 20, 80, 300, 100);

//  fill(0, 255, 0);
//  stroke(0, 255, 0);
//  ellipse(20, 80, 5, 5);
//  noFill();
//  rect(20, 80, 300, 100);
//}



// way-3
//PFont font;

//String s = "Setting text box size will change line automatic";

//void setup(){
//  size(600,200);
//  font = createFont("Gungsuh", 24);
//  textFont(font);}
  
//void draw(){
//  background(255);
  
//  fill(0);
//  noStroke();
//  textLeading(24);
//  text(s, 20, 20, 160, 160);
  
//  fill(0, 255, 0);
//  stroke(0, 255, 0);
//  ellipse(20, 20, 5, 5);
//  noFill();
//  rect(20, 20, 160, 160);
  
//  fill(0);
//  noStroke();
//  textLeading(40);
//  text(s, 200, 20, 160, 160);
  
//  fill(0, 255, 0);
//  stroke(0,255,0);
//  ellipse(200, 20, 5, 5);
//  noFill();
//  rect(200, 20, 160, 160);
//}


// way-4
PFont font;

String s = "Setting text box size will change line automatic";

void setup(){
  size(600,200);
  font = createFont("Gungsuh", 24);
  textFont(font);}
  
void draw(){
  background(255);
  
  fill(0);
  noStroke();
  textLeading(24);
  text(s, 20, 20, 160, 160);
  
  fill(0, 255, 0);
  stroke(0, 255, 0);
  ellipse(20, 20, 5, 5);
  noFill();
  rect(20, 20, 160, 160);
  
  fill(0);
  noStroke();
  textLeading(40);
  text(s, 200, 20, 160, 160);
  
  fill(0, 255, 0);
  stroke(0,255,0);
  ellipse(200, 20, 5, 5);
  noFill();
  rect(200, 20, 160, 160);
}
