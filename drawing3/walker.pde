class Walker {
  
  int x, y;
  
  int radius = 50;
  
  PVector dir;
  
  //constructor
  Walker (int _x, int _y) {
  
  x = _x;
  y = _y;
  
  }
  
  void draw() {
    
    fill(150,0,150);
    ellipse(x, y, radius, radius);
  }
  
  void update() {
    
    dir = PVector.random2D();

    x += dir.x;
    y += dir.y;
  
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}