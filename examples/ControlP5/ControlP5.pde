import controlP5.*;

float rectSize = 250;
float ellipseSize = 250;

ControlP5 cp5;

void setup() {
  size(1280, 720);
  background(0);
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("rectSize").setPosition(50, 50).setRange(0, 500);
  cp5.addSlider("ellipseSize").setPosition(50, 75).setRange(0, 500);
}

void draw() {
  background(0);
  
  blendMode(ADD);
  
  translate(width / 2, height / 2);
  noStroke();
  
  fill(255, 0, 0);
  rect(-rectSize / 2, -rectSize / 2, rectSize, rectSize);
  
  fill(0, 255, 0);
  ellipse(0, 0, ellipseSize, ellipseSize);
  
  resetMatrix();
  blendMode(NORMAL);
}
