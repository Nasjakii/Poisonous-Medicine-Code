

if scr_in_bounds(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
	image_index = 1;
	
	if mouse_check_button_released(mb_left) {
		room_goto(PharmacyBackroom);
		objGeneral.killer_spawn_object = objBrewingstand;
		objGeneral.killer_spawn_pos = "middle";
	}
	
} else {
	image_index = 0;
}

