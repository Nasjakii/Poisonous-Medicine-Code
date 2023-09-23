
function scr_draw_dialog(d_index = dialog_index){
	
	#region Variablen Instanziieren
	
		//look of the text
		if !variable_instance_exists(id, "pretty_str_index") {
			pretty_str_index = 0;
		} else {
			pretty_str_index++;
		}
		
		//What page you are on
		if !variable_instance_exists(id, "text_page") {
			text_page = 0;
		} 
		
		//Dialog type default
		if !variable_instance_exists(id, "dialog_type") {
			dialog_type = "End";
		} 
	#endregion
	
	
	#region Load text
		var text = [];
		if special_interact_index <= global.event_index {
			dialog_type = "Special"; 
			
			text = special_arr[special_interact_index];
			//special camera
			scr_camera_set("Special", id);

		} else {
			
			if array_length(text_arr) > d_index && text_arr != 0 {
				dialog_type = "Normal"; //normal interact
				
				text = text_arr[d_index];
			} else {
				dialog_type = "End"; 
				text = ["End Dialog"];
			}
			
		}
	

	#endregion
	
	
	//Setup
	talking = true;
	objKiller.dialog = true;

	#region Text positions, font and profile
		var sprite = profile;
	
		var xpos = (gui_width - sprite_get_width(sprDialogWindow)) / 2;
		var ypos = gui_height - sprite_get_height(sprDialogWindow);

		//draw only the string to a certain point (0 to pretty str index)
		var pretty_str = string_copy(text[text_page],0,pretty_str_index);
	
		draw_sprite(sprite, 1, xpos - sprite_get_width(sprite), gui_height - sprite_get_height(sprite));
		draw_sprite(sprDialogWindow, 1, xpos, ypos);
		scr_set_text(c_black,fa_left,fa_top, foCustom);
		draw_text_ext(xpos + 60, ypos + 60, pretty_str, string_height(pretty_str),sprite_get_width(sprDialogWindow)-120);
		scr_reset_text();
	#endregion
	
	#region comfort
		//Quick draw text
		if keyboard_check_direct(vk_space) {
			//double speed
			pretty_str_index++;
		}
	#endregion
	
	//Next page
	if keyboard_check_released(vk_space) && pretty_str_index >= string_length(text[text_page]){
		//reset the string "animation"
		pretty_str_index = 0;

		//go to next page if its not the last
		if text_page < array_length(text) - 1 {
			text_page++;
		} else {	
			scr_safe("Real", name, "dialog_index", dialog_index, "dialog");
			
			
			switch(dialog_type) {
				case("Special"):
					//next special_interact
					special_interact_index++; //solution to infinite loop and next sequence not possible
					special_interact_index = scr_dialog_get_next_sequence(special_interact_index, special_arr);
					scr_safe("Real", name, "special_interact_index", special_interact_index, "dialog");
				break;
				case("Normal"):
					//if it was the last page end the dialog
					dialog_index++;
					scr_safe("Real", name, "dialog_index", dialog_index, "dialog");
				break;
				case("End"):
					
				break;
			}
			
			
			//if was interacted with an item
			item_interacted_with = -1;

			#region Reset
				//Reset to page 0
				text_page = 0;
				
				scr_special_camera_reset();
				scr_camera_set("Player", id);
				//End Dialog
				interact = false;
				talking = false;
				
				
				//for player
				with(objKiller) {
					monolog = false 
					dialog = false;
					state = state_idle;
				}
			#endregion

		}
	}
	
	
	
}