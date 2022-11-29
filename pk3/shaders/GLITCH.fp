uniform float timer;

void main(){
	vec4 pcolor = texture(InputTexture, TexCoord);
	vec uv = TexCoord.xy;
	
	//Resta el color de pcolor a 1.0 para hacerlo negativo
	FragColor.r = 1.0-pcolor.r;
	FragColor.g = 1.0-pcolor.g;
	FragColor.b = 1.0-pcolor.b;
}

float random(vec2 co){
	return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
}