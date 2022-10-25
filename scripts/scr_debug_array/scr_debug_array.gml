
function scr_debug_array(array, space_count = 1){
	
	var output = "";
	var space = " ";

	
	//is 2d
	var is_2d = array_length(array[0]) > 1;
	
	for(var i = 0; i < array_length(array); i++) {
		output += string(array[i,0]) + string_repeat(space, space_count);
		if is_2d {
			for(var i2 = 1; i2 < array_length(array[0]); i2++) {
				output += string(array[i,i2]) + string_repeat(space, space_count);
			}
		}
		output += "\n";
	}
	
	debug output));
}