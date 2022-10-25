
function scr_create_inline(){
	
	uniform_Handle = shader_get_uniform(shader_inline, "texture_pixel");
	
	shader_border_handle = shader_get_uniform(shader_inline, "border_pos");
}
