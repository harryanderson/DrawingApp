class Circle {
  
  float x;
  float y;
  float radius = 300;
  
  
  Circle (float _x, float _y) {
    x = _x;
    y = _y;
    
  }
  
  void draw() {
    
    fill(0);
    ellipse(x, y, radius, radius);
    
  }
  
}