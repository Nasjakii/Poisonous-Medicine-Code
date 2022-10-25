function scr_get_dialog(object_name, kind = ""){
	
	var l_map = ds_map_find_value(objDialog.language_map, global.language); //getting the character map
	var c_map = ds_map_find_value(l_map, object_name); //getting the character dialog
	
	if c_map == undefined {
		scr_error("No Dialog found for", object_name);
		return false;
	}

	var d_array = [];
	d_array[0,0] = 0;

	for(var i = 0; i < ds_map_size(c_map);i++) {							
					//key	special key						
		var key = string(i) + kind;
		var d_list = ds_map_find_value(c_map, key); //giving the dialog lists
		
		if d_list != undefined {

			for(var i2 = 0; i2 < ds_list_size(d_list); i2++) {
				d_array[i,i2] = ds_list_find_value(d_list, i2); //giving the list elements
			}
		}
	
	}
	
	return d_array;
	
	ds_list_destroy(d_list);

}