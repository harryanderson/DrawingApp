class Circle {
  
  float x;
  float y;
  int radius = 50 + (int)random(100);
  int max_size = 400;
  
  int alpha = 255;
  

  
  Circle (float _x, float _y) {
    x = _x;
    y = _y;
    
  }
  
  void draw() {
    
    noStroke();
    fill((int)random(100,255), (int)random(100,255), (int)random(100,255), alpha);
    ellipse(x, y, radius%max_size, radius%max_size);
    
  }
  
  void update() {
  
    radius++;
    
    alpha -= 5;
  
  }
  
}