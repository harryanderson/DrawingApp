class Shape {
 
  PImage img;
  int x, y;
  float rot_speed = 1;
  float size = random(0,10);
  float r = 0.1;
  Shape(PImage _pic, int _x, int _y) {
    img = _pic;
    x = _x;
    y = _y;
    
  }
  
  void set_RotSpeed(float speed) {
   rot_speed = speed; 
  }
  
  void set_size(float _size) {
   size = _size; 
  }
    
    
  
  void draw() {
   int w = img.width;
   int h = img.height;
   pushMatrix();
   translate(x,y);
   rotate(radians(((r*0.9)%180)*rot_speed));
   image(img, 0, 0, w*size, h*size);
   popMatrix();
   r++;
  }
  
  
}