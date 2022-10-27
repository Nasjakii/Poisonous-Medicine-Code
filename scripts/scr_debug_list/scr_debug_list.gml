function scr_debug_list(list){
	for(var i = 0; i < ds_list_size(list); i++) {
		debug ds_list_find_value(list, i)));
	}
}