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
	
	

	
	//safe
	dialog_index = 0;
	
	special_interact = true;
	
	
	//Todo shouldnt be needed later
	if scr_get_dialog(name) == false {
		can_talk = false;
	}
	
	state = "Idle";
	
	scr_create_object(false, true, 1);
	
	
}