function scr_create_subject(objName, profile_sprite = sprNothing){
	
	name = objName;
	
	can_talk = true;
	talking = false;
	item_interacted_with = -1;
	
	//Array of Facial expressions
	profile = profile_sprite;
	text_arr = scr_get_dialog(name);
	
	//empty elements are important bc of the dialog index
	special_arr = scr_get_dialog(name, "F");
	
	end_arr = scr_get_dialog(name, "E");

	
	//load dialog
	dialog_index = scr_load("Real", objName, "dialog_index", 0);
	
	var first_special_interact = scr_dialog_get_next_sequence(dialog_index, special_arr); //Default val if not talked to
	special_interact_index = scr_load("Real", objName, "special_interact_index", first_special_interact);

	
	//Todo shouldnt be needed later
	if scr_get_dialog(name) == false {
		can_talk = false;
	}
	
	state = "Idle";
	
	scr_create_object(false, true, 1);
	
	
}