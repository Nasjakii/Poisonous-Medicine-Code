
function scr_draw_dialog(d_index = dialog_index){
	
	static text_page = 0;
	static dialog_type = "End";

	
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
	

		scr_dialog_draw_text(text[text_page]);
	#endregion
	

	//Next page
	if keyboard_check_released(vk_space) {

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