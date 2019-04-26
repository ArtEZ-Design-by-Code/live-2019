uniform mat4 transform;

in vec4 position;
in vec2 texCoord;

out vec2 vertTexCoord;

void main() {
	vertTexCoord = texCoord;
	gl_Position = transform * position;
}
