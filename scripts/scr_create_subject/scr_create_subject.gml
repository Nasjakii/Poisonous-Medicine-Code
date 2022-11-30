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
	
	
	
	//load
	dialog_index = scr_load("Real", objName, "dialog_index", 0);

	
	
	special_interact_index = scr_dialog_get_next_sequence(dialog_index, special_arr);
	debug special_interact_index) + " " + string(objName));
	


	
	//Todo shouldnt be needed later
	if scr_get_dialog(name) == false {
		can_talk = false;
	}
	
	state = "Idle";
	
	scr_create_object(false, true, 1);
	
	
}