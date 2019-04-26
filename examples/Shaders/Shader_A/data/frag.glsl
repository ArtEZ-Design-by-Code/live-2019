in vec2 colorPosition;

void main() {
	gl_FragColor = vec4(colorPosition.x, 0, colorPosition.y, 1);
}
