
if mouse_check_button_pressed(mb_left) && scrInBounds(mouse_x, mouse_y, x,y,x+sprite_width,y+sprite_height) {
	xpos = mouse_x;
	ypos = mouse_y;
}


if scr_in_bounds_object(mouse_x, mouse_y, id) {

	if mouse_check_button(mb_left) && xpos != 0 {
		var x_dist = mouse_x - xpos;
		var y_dist = mouse_y - ypos;
		
		x_dist = clamp(x_dist, 0,x_dist_needed);
		y_dist = clamp(y_dist, 0,y_dist_needed);
		
		//Progress from 1 to 10
		progress = (x_dist + y_dist) / (y_dist_needed + x_dist_needed) * 10 - 1;
		
		progress = clamp(progress, 0, 9);
		
	}

	if mouse_check_button_released(mb_left)  {
		progress = 0;
		xpos = 0;
		ypos = 0;
	}

} else {
	progress = 0;
		xpos = 0;
		ypos = 0;
}


if progress == 9 {
	objTestTube.fillheight = 0;
	objTestTube.mix_color = make_color_rgb(255,255,255);
}


