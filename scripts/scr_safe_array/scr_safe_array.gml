function scr_safe_array(section, key, arr){
	var grid = scr_array_to_grid(arr);
	
	ini_write_string(section, key, ds_grid_write(grid));
}