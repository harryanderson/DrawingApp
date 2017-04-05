ArrayList<Shape> shapeBrush = new ArrayList<Shape>();

PImage[] imgs = new PImage[5];


void setup() {
  size(1024, 768, P2D);
  
  imgs[0] = loadImage("Polygon.png");
  imgs[1] = loadImage("Polygon-1.png");
  imgs[2] = loadImage("Polygon-2.png");
  imgs[3] = loadImage("Polygon-4.png");
  imgs[4] = loadImage("Polygon-3.png");
}

void draw() {
  background(0);
  
  for (int i=0; i <shapeBrush.size(); i++) {
    float norm_length = map(i,0,shapeBrush.size(),0.0, 1.0);
    float lfo = map(norm_length*sin(frameCount*0.02), -1.0, 1.0, 0.0, 1.0);
    
    
    Shape shape = shapeBrush.get(i);
    
    shape.set_size(lfo*2);
    shape.set_RotSpeed(lfo*5.25);
    shape.draw();
  }
  
}

void mouseDragged() {
  shapeBrush.add(new Shape(imgs[int(random(0, 5))], mouseX, mouseY));
  
}