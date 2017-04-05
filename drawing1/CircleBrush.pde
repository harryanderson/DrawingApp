class Circle {
  
  float x;
  float y;
  int radius = 50;
  int max_size = 300;
  
  int alpha = 255;
  

  
  Circle (float _x, float _y) {
    x = _x;
    y = _y;
    
  }
  
  void draw() {
    
    noStroke();
    fill((int)random(255), (int)random(255), (int)random(255), alpha);
    ellipse(x, y, radius%max_size, radius%max_size);
    
  }
  
  void update() {
  
    radius++;
    
    alpha -= 5;
  
  }
  
}