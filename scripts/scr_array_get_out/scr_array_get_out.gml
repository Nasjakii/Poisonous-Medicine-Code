
function scr_array_get_out(array_1d, array_2d, position){
	//copies a part from a 2d array into a 1d array
	for(var i = 0; i < array_length(array_1d); i++) {
		array_1d[i] = array_2d[position, i];
	}
	
	return array_1d;
	
}