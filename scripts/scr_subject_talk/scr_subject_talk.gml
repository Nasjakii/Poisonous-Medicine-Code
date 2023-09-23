function scr_subject_talk(){
	
	
	if special_interact_index <= global.event_index && scr_in_range(objKiller) {
		interact = true;
	}


	if interact {
		scr_draw_dialog(dialog_index);
	}
	
	
}