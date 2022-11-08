function scr_get_dialog(object_name, kind = ""){
	
	var l_map = ds_map_find_value(objDialog.language_map, global.language); //getting the character map
	var c_map = ds_map_find_value(l_map, object_name); //getting the character dialog
	
	if c_map == undefined {
		scr_error("No Dialog found for", object_name);
		return false;
	}
	
	
	var re_array = [];
	for(var i = 0; i < ds_map_size(c_map); i++) {
		
		var key = string(i) + kind;
		if ds_map_find_value(c_map, key) != undefined {
			var list = ds_map_find_value(c_map, key);
						
			
			for(var i2 = 0; i2 < ds_list_size(list); i2++) {
				re_array[i,i2] = ds_list_find_value(list, i2);
			}
		}
		

	}
	
	return re_array;
	
	

}