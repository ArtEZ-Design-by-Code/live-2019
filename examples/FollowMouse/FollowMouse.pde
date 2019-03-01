PVector location;
PVector targetLocation;

void setup() {
  size(1000, 1000);
  
  location = new PVector(width / 2, height / 2);
  targetLocation = new PVector(width / 2, height / 2);
}

void draw() {
  location.x = lerp(location.x, targetLocation.x, noise((float) frameCount / 100) / 5);
  location.y = lerp(location.y, targetLocation.y, noise((float) frameCount / 100) / 5);
  
  background(0);
  
  fill(255);
  noStroke();
  
  ellipse(location.x, location.y, 50, 50);
}

void mousePressed() {
  targetLocation.set(mouseX, mouseY);
}
