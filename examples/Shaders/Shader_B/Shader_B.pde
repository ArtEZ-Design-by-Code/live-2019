import processing.video.*;

PShader myShader;
Capture capture;

void setup() {
	size(800, 800, P2D);

	myShader = loadShader("frag.glsl", "vert.glsl");

	capture = new Capture(this, Capture.list()[0]);
	capture.start();
}

void draw() {
	background(0);
	if (capture.available()) {
		capture.read();
	}

	surface.setTitle(
		(float) round(
			(float) frameRate * 10
			) / 10
		+ "fps");

	shader(myShader);

	beginShape(QUADS);
	texture(capture.get());
	textureMode(NORMAL);
	vertex(50, 100, 0, 0);
	vertex(width - 200, 0, 1, 0);
	vertex(width - 50, height - 250, 1, 1);
	vertex(10, height - 100, 0, 1);
	endShape();
}
