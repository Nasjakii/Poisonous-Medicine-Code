function scr_path_set_state(path_name, state){
	var map = scr_get_paths_map();
	
	var path_map = ds_map_find_value(map, path_name);
	ds_map_set(path_map,"State", state);
	
}