ArrayList<Walker> walkerList = new ArrayList<Walker>();

//----------------------
void setup() {
  size(1024, 768);
  
}


//----------------------
void draw() {
  background (255);
  
  for (int i = 0; i < walkerList.size(); i++) {
  
    Walker walker = walkerList.get(i);
    walker.update();
    walker.draw();
    
  
  }
  
}

//----------------------
void mousePressed() {
  
  walkerList.add(new Walker(mouseX, mouseY));
  
  
}