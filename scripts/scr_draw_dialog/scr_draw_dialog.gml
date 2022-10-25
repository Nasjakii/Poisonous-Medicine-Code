
function scr_draw_dialog(dialog_index){
	
	if special_interact {
		
		//special camera
		scr_special_camera_create(bbox_left - 150, bbox_top - 60, bbox_right + 150);

		scr_quest_create("Paperboy quest");
		
		debug special_arr[0,0]));
		
		
		
	} else {
	
	
		//Exit if the person is not able to talk
		if can_talk == false {
			return false;
		} 
		objKiller.dialog = true;
	
		#region Variablen Instanziieren
	
			if !variable_instance_exists(id, "pretty_str_index") {
				pretty_str_index = 0;
			} else {
				pretty_str_index++;
			}
			if !variable_instance_exists(id, "text_page") {
				text_page = 0;
			} 
		
			//Setup
			talking = true;
			var sprite = profile;
			text = text_arr[dialog_index]
		
	
		#endregion
	
	
		var xpos = (gui_width - sprite_get_width(sprDialogWindow)) / 2;
		var ypos = gui_height - sprite_get_height(sprDialogWindow);

		//draw only the string to a certain point (0 to pretty str index)
		var pretty_str = string_copy(text[text_page],0,pretty_str_index);
	
		draw_sprite(sprite, 1, xpos - sprite_get_width(sprite), gui_height - sprite_get_height(sprite));
		draw_sprite(sprDialogWindow, 1, xpos, ypos);
		scr_set_text(c_black,fa_left,fa_top, foCustom);
		draw_text_ext(xpos + 60, ypos + 60, pretty_str, string_height(pretty_str),sprite_get_width(sprDialogWindow)-120);
		scr_reset_text();
	
	
	
		//Quick draw text
		if keyboard_check_direct(vk_space) {
			//double speed
			pretty_str_index++;
		}
	
		//Next page
		if keyboard_check_released(vk_space) && pretty_str_index >= string_length(text[text_page]){
			//reset the string "animation"
			pretty_str_index = 0;

			//go to next page if its not the last
			if text_page < array_length(text) - 1 {
				text_page++;
			} else {		
				//End Dialog
				interact = false;
				talking = false;
			
				//if was interacted with an item
				item_interacted_with = -1;

				//Reset to page 0
				text_page = 0;
				objKiller.dialog = false;

			}
		}
	
	}
	
}