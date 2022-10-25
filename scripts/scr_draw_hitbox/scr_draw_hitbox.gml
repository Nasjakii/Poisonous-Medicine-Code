
function scr_draw_hitbox(sprite,xpos,ypos, color = c_red){
	
	var s = sprite;
	draw_set_alpha(0.5);
	draw_rectangle_color(xpos, ypos, 
	xpos + sprite_get_width(s), ypos + sprite_get_height(s),
	color,color,color,color, false);
	draw_set_alpha(1);
}