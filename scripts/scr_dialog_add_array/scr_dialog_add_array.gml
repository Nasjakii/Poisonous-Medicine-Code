function scr_dialog_add_array(array, object_name){
	
	var list_array = [];
	for(var i = 0; i < array_length(array);i++) {
		//array to list
		list_array[i] = ds_list_create();
				//without 1, defines type
		for(var i2 = 1; i2 < array_length(array[i]); i2++) {
			//add every line 
			ds_list_add(list_array[i], array[i,i2]);
		}
		
		
	}
	

	
	//add lists to map
	var dialog_map = ds_map_create();
	for(var i = 0; i < array_length(array); i++) {
		var type = array[i, 0];
		ds_map_add_list(dialog_map, string(i) + type, list_array[i]);
	}

	return scr_map_clone(dialog_map);

	
}