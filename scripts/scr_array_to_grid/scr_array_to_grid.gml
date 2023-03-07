function scr_array_to_grid(arr){
	var re_grid = ds_grid_create(array_length(arr),array_length(arr[0]));
	
	for(var i = 0; i < array_length(arr); i++) {
		for(var i2 = 0; i2 < array_length(arr[i]); i2++) {
			ds_grid_set(re_grid, i,i2, arr[i,i2]);
		}
	}
	
	return re_grid;

}