
function scr_draw_inline(){
	
	shader_set(shader_inline);
	
	var texture = sprite_get_texture(sprite_index, image_index);
	var texel_width = texture_get_texel_width(texture);
	var texel_height = texture_get_texel_height(texture);
	
	shader_set_uniform_f(uniform_Handle, texel_width, texel_height);
	
	var uv = sprite_get_uvs(sprite_index, image_index);
											  //left,  up,   right,  down						                          
	shader_set_uniform_f(shader_border_handle, uv[0], uv[1], uv[2], uv[3]);

	draw_self();
	shader_reset();
	
}