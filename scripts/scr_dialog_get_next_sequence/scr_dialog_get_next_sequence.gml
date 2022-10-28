function scr_dialog_get_next_sequence(curr_index, dialog_arr){
	
	for(var i = curr_index; i < array_length(dialog_arr); i++) {
		
		if dialog_arr[i] != 0 {
			return i;
		}
		
	}
	
	//something went wrong
	scr_error("Dialog get next Sequence", curr_index);
	return 0;
}