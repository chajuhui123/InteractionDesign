PFont font;
String[] ss = {"TEXT1", "TEXT2", "TEXT3", "TEXT4", "TEXT5"};

void setup() {
  size(600, 300);
  font = loadFont("ProcessingSansPro-Semibold-48.vlw");
  textFont(font);
}

void draw(){
background(255);
fill(#FCF5CC);

for(int i = 0; i<= 4; i+=1){
  float x = random(0,width);
  float y =random(0,height);
  text(ss[i], x, y);
}
}
