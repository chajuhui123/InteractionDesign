void setup(){
  size(200, 200);
}

void draw(){
  int position = 100 ;
  int size = 20 ;
  ellipse(position-40, position, size, size);
  ellipse(position-20, position, size, size);
  ellipse(position, position, size, size);
  ellipse(position+20, position, size, size);
  ellipse(position+40, position, size, size);
  
  ellipse(position-40, position+20, size, size);
  ellipse(position-20, position+20, size, size);
  ellipse(position, position+20, size, size);
  ellipse(position+20, position+20, size, size);
  ellipse(position+40, position+20, size, size);
  
  ellipse(position-40, position+40, size, size);
  ellipse(position-20, position+40, size, size);
  ellipse(position, position+40, size, size);
  ellipse(position+20, position+40, size, size);
  ellipse(position+40, position+40, size, size);
  
  ellipse(position-40, position-20, size, size);
  ellipse(position-20, position-20, size, size);
  ellipse(position, position-20, size, size);
  ellipse(position+20, position-20, size, size);
  ellipse(position+40, position-20, size, size);
  
}
