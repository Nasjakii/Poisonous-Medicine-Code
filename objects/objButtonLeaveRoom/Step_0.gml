

if scr_in_bounds(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) {
	image_index = 1;
	
	if mouse_check_button_released(mb_left) {
		room_goto(PharmacyBackroom);
		
		var curr_room = room_get_name(room);
		switch(curr_room){
			case("Brewroom"):
				objGeneral.killer_spawn_object = objBrewingstand;
			break;
			case("Craftingroom"):
				objGeneral.killer_spawn_object = objCraftingtable; 
			break;
		}
		objGeneral.killer_spawn_pos = "middle";
	}
	
} else {
	image_index = 0;
}

