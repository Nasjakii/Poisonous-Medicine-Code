
function scr_draw_outline(){
	
	shader_set(shader_outline);
	
	var texture = sprite_get_texture(sprite_index, image_index);
	var texel_width = texture_get_texel_width(texture);
	var texel_height = texture_get_texel_height(texture);
	
	shader_set_uniform_f(uniform_Handle, texel_width, texel_height);
	

	draw_self();
	shader_reset();
}