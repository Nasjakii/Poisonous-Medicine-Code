function scr_player_monolog_create(profile_sprite = sprNothing){
		
	var name = "Jacob";

	//Array of Facial expressions
	profile = profile_sprite;
	text_arr = scr_get_dialog(name);
	
	//empty elements are important bc of the dialog index
	special_arr = scr_get_dialog(name, "F");
	
	
	
	//load
	scr_load("Real", name, "dialog_index", 0);
	dialog_index = 0;
	
	
	special_interact_index = scr_dialog_get_next_sequence(dialog_index, special_arr);
	
}