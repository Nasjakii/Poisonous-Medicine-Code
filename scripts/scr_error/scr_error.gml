
function scr_error(error_string, error_var = ""){
	
	if objGeneral.draw_debug == true {
		show_debug_message("ERROR: " + error_string + " " + string(error_var) + " called by: " + object_get_name(object_index));
	}
}