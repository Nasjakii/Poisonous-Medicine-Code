
if interact {
	
	
	
	if global.item_holding.name != "Wranch" {
		//Open overlay with turning cogs
		draw_sprite(sprCog1, 1, gui_width / 2, gui_height / 2);
	} else {

		scr_item_use("Wranch");
		
		//until you interact with an wranch or something with it
		//then shows a stuck version of the tower
		scr_path_set_state("Clockwork Failure", 1);
		image_speed = 0;
		
		
		//Start timer so you have time left until the assistent notices

		

	}
	

	
	with(objKiller) {
		state = state_idle;
	}

	if keyboard_check_released(vk_space) {
		interact = false;
	}
} 