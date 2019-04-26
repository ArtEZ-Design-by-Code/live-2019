uniform sampler2D texture;
in vec2 vertTexCoord;

vec4 sampleTexture(vec2 coord) {
	return texture2D(texture, coord);
}

void main() {
	gl_FragColor = sampleTexture(sampleTexture(vertTexCoord).xy);
}
