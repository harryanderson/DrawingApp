//array Lists
// circle brush arralist
ArrayList<Circle> circlesContainer = new ArrayList<Circle>();
// shapebrush arraylist
ArrayList<Shape> shapeBrush = new ArrayList<Shape>();

//arry of images for shape brush
PImage[] imgs = new PImage[5];

//global variables 
PFont font;
boolean bStart = false;
boolean bcircleBrush = false;
boolean bshapeBrush = false;
boolean bmirror = false;

//-----------------------------------
void setup() {
  size(1024, 768, P2D);
  smooth();
  //load lato font
  font = loadFont("lato.vlw");
  
  //load images for shapeBrush
  imgs[0] = loadImage("Polygon.png");
  imgs[1] = loadImage("Polygon-1.png");
  imgs[2] = loadImage("Polygon-2.png");
  imgs[3] = loadImage("Polygon-4.png");
  imgs[4] = loadImage("Polygon-3.png");
}

//-----------------------------------
void draw() {
  if (bStart == false) {
    // if bStart is false draw the welcome screen
    welcomeScreen();
  } else {
    background(0);
    
      //circle brush loop
      for(int i = 0; i < circlesContainer.size(); i++) {
      
      Circle currentCircle = circlesContainer.get(i);
      currentCircle.draw();
      currentCircle.update();
      if (circlesContainer.size() > 100) {
        circlesContainer.remove(0);
        
      }
    }
    // shape brush loop
    for (int i=0; i <shapeBrush.size(); i++) {
    float norm_length = map(i,0,shapeBrush.size(),0.0, 1.0);
    float lfo = map(norm_length*sin(frameCount*0.02), -1.0, 1.0, 0.0, 1.0);
    
    
    Shape shape = shapeBrush.get(i);
    
    shape.set_size(lfo*2);
    shape.set_RotSpeed(lfo*5.25);
    shape.draw();
    }
    if (bmirror == true) {
      
      mirror();
      
    }
    // draw instructions at the bottom of the screen
    textSize(12);
    fill(255);
    text("BRUSHES KEYS //  CircleBrush: 1  ShapeBrush: 2  PepeBrush: 3", 100, 740);
    text("FUNCTION KEYS //  Clear: C  Mirror: M  Save: S", (width/2)+20, 740);
  }
}

//-----------------------------------
void mouseDragged() {
  // Draws a welcome screen on Enter pressed
    if (bcircleBrush == true) {
      circlesContainer.add(new Circle(mouseX, mouseY));
    }
    if (bshapeBrush == true) {
      shapeBrush.add(new Shape(imgs[int(random(0, 5))], mouseX, mouseY));
    }
}


//-----------------------------------
void keyPressed() {
  // Draws a welcome screen on Enter pressed
  if (key == ENTER) {
    bStart = !bStart;
  }
  if (key == '1') {
    bcircleBrush = true;
    bshapeBrush = false;
  }
  if (key == '2') {
    bshapeBrush = true;
    bcircleBrush = false;
  }
  if (key == 'c') {
    clear();
  }if (key == 'm') {
    bmirror = !bmirror;
    
  }
  if (key == 's') {
    saveFrame("data/savedImage-###.png");
  }
}

//-----------------------------------
void welcomeScreen() {
  // Draws a welcome screen
  background(#3797FF);
  textSize(80);
  text("Drawing App", 200, 300);
  textSize(30);
  text("Harry Anderson / s3436571", 200, height/2);
  textSize(30);
  text("Press Enter to begin", 200, 450);
}

//-----------------------------------
void clear() {
  // clears the screen
  circlesContainer.clear();
  shapeBrush.clear();
}

//-----------------------------------
void mirror() {
  loadPixels();
  for (int x=width/2; x<width; x++) {
    for (int y=0; y<height; y++) {
      pixels[x+y*width] = pixels[(width-x)+y*width];
    }
  }
  updatePixels();
}