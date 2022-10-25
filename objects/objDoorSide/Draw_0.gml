draw_self();

if state == 1 {
	
	if time_step < 100 {
		time_step += 0.1;
	} else {
		time_step = 0;
	}
	
	draw_set_font(foInteract);
	
	draw_set_halign(fa_middle);
	
	draw_text(x + sprite_width / 2, y + 3 * sin(time_step), "Betreten");
	draw_set_halign(fa_left);
	
	draw_set_font(foDefault);
}






	draw_set_color(c_red);
	if image_index == 1 {
		var hitbox_handle = point_in_rectangle(mouse_x, mouse_y, x + 84 * image_xscale ,y + 85 * image_yscale,x + 128 * image_xscale, y + 120 * image_xscale);
		draw_rectangle(x + 84 * image_xscale ,y + 85 * image_yscale,x + 128 * image_xscale, y + 120 * image_xscale, 1);
	} else {
		var hitbox_handle = point_in_rectangle(mouse_x, mouse_y, x ,y + 85 * image_yscale,x + 20 * image_xscale, y + 120 * image_xscale);	
		draw_rectangle(x ,y + 85 * image_yscale,x + 20 * image_xscale, y + 120 * image_xscale, 1);
	}
	draw_set_color(c_white);
	
	if hitbox_handle && l_click {		
		state = scr_toggle(state);
	}
	
	
