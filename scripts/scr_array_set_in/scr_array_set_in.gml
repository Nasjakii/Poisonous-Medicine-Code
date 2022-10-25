
function scr_array_set_in(array_2d, position, array_1d){
	for(var i = 0; i < array_length(array_1d);i++) {
		array_2d[position, i] = array_1d[i];
	}
	return array_2d;
}