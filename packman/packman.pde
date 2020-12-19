// We can go anywhere !
// HY2018051985 juhee Cha 

String s = "we can go anywhere";
int between = 120;
PFont font;
int num = 1;
float[] x;
float[] x2;
float[] x3;

void setup(){
  size(700, 375);
  background(#000000);
  font = createFont("lab.ttf", 26);
  textFont(font);
  x = new float[num];
  x2 = new float[num];
  x3 = new float[num];
}

void draw(){
  background(#000000);

  // outline
  stroke(#1A32B7);
  strokeWeight(2);
  line(10, 10, 690, 10);
  line(10, 10, 10, 325);
  line(10, 325, 690, 325);
  line(690, 325, 690, 10);

  line(25, 25, 675, 25);
  line(25, 25, 25, 305);
  line(25, 305, 675, 305);
  line(675, 305, 675, 25);
  
  // rect (obstacles)
  noFill();
  for (int i = 0; i<=4; i++){
    rect(65 + (i*between), 65, 80, 80);
  }
  
  for (int j = 0; j<=4; j++){
    rect(65 + (j*between), 185, 80, 80);
  }
  
  // cookie
  stroke(#FFE23B);
  for (int a =0; a < 13; a++){
    point(45, 45+ (20*a));
    point(45 + between, 45+(20*a));
    point(45 + (between*2), 45+(20*a));
    point(45 + (between*3), 45+ (20*a));
    point(45 + (between*4), 45+ (20*a));
    point(45 + (between*5), 45+ (20*a));
  }
  
  for (int b =0 ; b< 30; b++){
    point(45+ (20*b), 45);
    point(45 +(20*b) ,45+ 120);
    point(45 + (20*b) ,45+ 240);
  }
  
  // random monster
  for (int z  = 0; z < num; z ++){
    fill(#FFE23B);
    float x = random(45, 45 + (between*5) );
    ellipse(x, 165 - between, 10, 10);
    float x2 = random(45, 45 + (between*5) );
    ellipse(x2, 165, 10, 10);
    float x3 = random(45, 45 + (between*5) );
    ellipse(x3, 165 + between, 10, 10);
    
  }

  // bottom text
  textSize(26);
  fill(#FFE23B);
  text(s, 15, height - 20);
  
  // pacman following a mouse
  int pacmanSize = 25;
  noStroke();
  fill(abs(mouseX), abs(mouseY), abs(mouseX-mouseY));
  arc(mouseX + pacmanSize, mouseY + pacmanSize, pacmanSize, pacmanSize, PI, TWO_PI - QUARTER_PI);
  arc(mouseX + pacmanSize, mouseY + pacmanSize, pacmanSize, pacmanSize, QUARTER_PI, PI+QUARTER_PI);

  // monster next text
  int monsterBetween = 45;
  fill(#FA0000); // red
  beginShape();
  vertex(275, height - 20); // vvv
  vertex(280, height - 10); 
  vertex(285, height - 20);
  vertex(290, height - 10);
  vertex(295, height - 20);
  vertex(300, height - 10);
  vertex(305, height - 20);
  vertex(305, height - 40); // right |
  vertex(280, height - 40); // up _
  vertex(275, height - 40); // left |
  endShape(CLOSE);
  
  fill(#FAAB00); // orange
  beginShape();
  vertex(275 + monsterBetween, height - 20); // vvv
  vertex(280 + monsterBetween, height - 10); 
  vertex(285 + monsterBetween, height - 20);
  vertex(290 + monsterBetween, height - 10);
  vertex(295 + monsterBetween, height - 20);
  vertex(300 + monsterBetween, height - 10);
  vertex(305 + monsterBetween, height - 20);
  vertex(305 + monsterBetween, height - 40); // right |
  vertex(280 + monsterBetween, height - 40); // up _
  vertex(275 + monsterBetween, height - 40); // left |
  endShape(CLOSE);
  
  fill(#11F0DB); // mint
  beginShape();
  vertex(275 + (monsterBetween*2), height - 20); // vvv
  vertex(280 + (monsterBetween*2), height - 10); 
  vertex(285 + (monsterBetween*2), height - 20);
  vertex(290 + (monsterBetween*2), height - 10);
  vertex(295 + (monsterBetween*2), height - 20);
  vertex(300 + (monsterBetween*2), height - 10);
  vertex(305 + (monsterBetween*2), height - 20);
  vertex(305 + (monsterBetween*2), height - 40); // right |
  vertex(280 + (monsterBetween*2), height - 40); // up _
  vertex(275 + (monsterBetween*2), height - 40); // left |
  endShape(CLOSE);
  
  // ~
  stroke(#FFE23B);
  noFill();
  bezier(275 + (monsterBetween*3), height - 15 - 10, 275 + (monsterBetween*3) + 20, height - 15, 275 + (monsterBetween*3) + 20, height - 15 - 20, 275 + (monsterBetween*3) + 40, height - 15 - 10);
  
  
  
  
}
