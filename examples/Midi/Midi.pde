import themidibus.*;

MidiBus myBus;

// We're using 10 and 74

float rectSize = 0;
float ellipseSize = 0;

void setup() {
  size(displayWidth, displayHeight);
  background(0);

  MidiBus.list();
  myBus = new MidiBus(this, 1, -1); // sketch, input, output
}

void draw() {
  background(0);
  fill(255, 0, 0);
  noStroke();
  
  translate(width / 2, height / 2);
  rect(-rectSize / 2, -rectSize / 2, rectSize, rectSize);
  
  fill(255, 255, 0);
  ellipse(0, 0, ellipseSize, ellipseSize);
}

void controllerChange(int channel, int controllerID, int controllerValue) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("controllerID:"+controllerID);
  println("controllerValue:"+controllerValue);
  
  if (controllerID == 10) {
    // It's the first controller
    rectSize = controllerValue * 10;
  } else if (controllerID == 74) {
    // It's the second controller
    ellipseSize = controllerValue * 10;
  }
}
