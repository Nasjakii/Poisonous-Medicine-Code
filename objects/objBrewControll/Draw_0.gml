

if selected_bottle != 0 {
	draw_sprite(object_get_sprite(ds_bottles[selected_bottle]), 1,mouse_x, mouse_y);
}


if fillheight > 0 {
draw_set_alpha(0.9);

draw_rectangle_color(objTestTube.x + 6,objTestTube.y + objTestTube.sprite_height - 3,objTestTube.x + objTestTube.sprite_width - 7, 
			  objTestTube.y + objTestTube.sprite_height - fillheight - 3,
			  mix_color,mix_color,mix_color,mix_color, false);
draw_set_alpha(1);
}

