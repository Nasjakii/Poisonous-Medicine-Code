//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour; 

uniform vec2 texture_pixel;

uniform vec4 border_pos;


void main()
{
	
	vec4 end_pixel = v_vColour * texture2D(gm_BaseTexture, v_vTexcoord);
	
	if (texture2D(gm_BaseTexture, v_vTexcoord).a > 0.0) {
		
		float alpha0 = 0.0;
		float alpha1 = 0.0;
		float alpha2 = 0.0;
		float alpha3 = 0.0;
		
		alpha0 = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x - texture_pixel.x, v_vTexcoord.y)).a;
		alpha1 = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x + texture_pixel.x, v_vTexcoord.y)).a;
		alpha2 = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y + texture_pixel.y)).a;
		alpha3 = texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y - texture_pixel.y)).a;

		if (alpha0 <= 0.0 || alpha1 <= 0.0 || alpha2 <= 0.0 || alpha3 <= 0.0 || 
			v_vTexcoord.x - texture_pixel.x < 0.0 || v_vTexcoord.y - texture_pixel.y < 0.0) {
			end_pixel = vec4(1.0);
		}
		
		if (v_vTexcoord.x + texture_pixel.x > border_pos[2] || v_vTexcoord.x - texture_pixel.x < border_pos[0] ||
			v_vTexcoord.y + texture_pixel.y > border_pos[3] || v_vTexcoord.y - texture_pixel.y < border_pos[1]) {
			end_pixel = vec4(1.0);
		}
	}
	
	
	gl_FragColor = end_pixel;
	
}
