float size = 100;

void setup() {
  size(500, 500);
}

void draw() {
  size = noise((float) frameCount / 100) * 200 + 100;
  
  
  background(0);
  translate(width / 2, height / 2);

  fill(255);
  ellipse(0, 0, size, size);
}
