//returns a list with active custom paths

function scr_paths_active(){
	var active = ds_list_create();
	
	var map = scr_get_paths_map();
	var arr = ds_map_keys_to_array(map);
	for(var i = 0; i < array_length(arr); i++) {
		var path_name = arr[i];
		debug path_name));
		if ds_map_find_value(map, "State") == 1 {
			ds_list_add(active, path_name);
		}
	}
	
	return active;
}