float xStart = 100;
float xEnd = 100;
float yStart = 100;
float yEnd = 100;

float startTime = Integer.MAX_VALUE;
float duration = 2000; 

void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  
  float percentage = (millis() - startTime) / duration;
  percentage = constrain(percentage, 0, 1);
 
  percentage = startSlowEndFast(percentage);
  
  float currentX = lerp(xStart, xEnd, percentage);
  float currentY = lerp(yStart, yEnd, percentage);
  
  fill(255);
  noStroke();
  ellipse(currentX, currentY, 50, 50);
  
  if (percentage == 1) {
    xStart = xEnd;
    yStart = yEnd;
  }
}

float startSlowGoFastEndSlow(float percentage) {
    return sin((percentage - .5) * PI) / 2 + .5;
}

float startSlowEndFast(float percentage) {
    return pow(percentage, 5);
}

void mousePressed() {
  startTime = millis();
  xEnd = mouseX;
  yEnd = mouseY;
}
