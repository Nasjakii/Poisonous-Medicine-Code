
function scr_draw_cog(cog_rot){
	var new_scale = image_xscale / sprite_get_width(sprite_index) * (sprite_get_width(sprite_index) * image_xscale + objGeneral.shadow_width);

	draw_sprite_ext(sprite_index, 1, x + objGeneral.shadow_width / 2,y - objGeneral.shadow_width / 2,new_scale,new_scale,cog_rot,objGeneral.shadow_color,0.9);

	draw_sprite_ext(sprite_index, 1, x,y,image_xscale,image_yscale,cog_rot,c_white,1);
}