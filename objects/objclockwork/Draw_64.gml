
if interact {
	
	if scr_get_item_holding() != object_get_sprite(objWranch) {
		//Open overlay with turning cogs
		draw_sprite(sprCog1, 1, gui_width / 2, gui_height / 2);
	} else {
		var index = scr_get_item_index(objWranch);
		scr_item_use(index);
		
		//until you interact with an wranch or something with it
		//then shows a stuck version of the tower
		
		
		//Start timer so you have time left until the assistent notices

		

	}
	

	
	with(objKiller) {
		state = state_idle;
	}

	if keyboard_check_released(vk_space) {
		interact = false;
	}
} 