function scr_debug_map_list(map){
	
	var arr = ds_map_keys_to_array(map);
	
	for(var i = 0; i < array_length(arr); i++) {
		var element = ds_map_find_value(map, arr[i]);
		debug arr[i]) + " key");
		
		if element != undefined {
			for(var i2 = 0; i2 < ds_list_size(element); i2++) {
				debug ds_list_find_value(element, i2)) + " LE");
			}
		}
		
		debug " "));
	} 
}