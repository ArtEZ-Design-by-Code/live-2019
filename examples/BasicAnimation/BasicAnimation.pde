int x = -200;
boolean direction;

void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  fill(255);
  rect(x, height / 2 - 100, 200, 200);
  
  if (direction) x++;
  else x--;
  
  if (x > width + 100 || x < -200) {
    direction = !direction;
  }
}
