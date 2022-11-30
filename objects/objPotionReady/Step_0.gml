

if scr_in_bounds_object(mouse_x, mouse_y, id) && l_click {

	scr_add_item(sprPotion1, objPotion1, false, true, 1, 0);
	
	draw_fluid = false;
	mix_color = make_color_rgb(255,255,255);

	//if the recepie is right
	if global.event_index <= 1 {
		global.event_index = 2;
	}
}