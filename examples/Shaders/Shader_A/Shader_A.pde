PShader myShader;

void setup() {
	size(displayWidth, displayHeight, P2D);

	myShader = loadShader("frag.glsl", "vert.glsl");
}

void draw() {
	surface.setTitle(
		(float) round(
			(float) frameRate * 10
			) / 10
		+ "fps");

	shader(myShader);

	beginShape();
	vertex(0, 0);
	vertex(width, 0);
	vertex(width, height);
	vertex(0, height);
	endShape();
}
