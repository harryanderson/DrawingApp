ArrayList<Circle> circlesContainer = new ArrayList<Circle>();

//----------------------
void setup() {
  size(1024, 768);
  
}


//----------------------
void draw() {
  background (255);
  
  for(int i = 0; i < circlesContainer.size(); i++) {
    
    Circle currentCircle = circlesContainer.get(i);
    currentCircle.draw();
    currentCircle.update();
    if (circlesContainer.size() > 100) {
      circlesContainer.remove(0);
      
    }
    
  }
  
}

//----------------------
void mouseDragged() {
  
  circlesContainer.add(new Circle(mouseX, mouseY));
  
  
}