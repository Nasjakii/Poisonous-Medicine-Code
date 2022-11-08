function scr_get_view_array(from_layer = "Views"){
	
	var return_arr = [];
	var pos = 0;
	
	var elements = layer_get_all_elements(from_layer);
	var i;
	for(i = 0; i < array_length(elements); i++) {
		if layer_get_element_type(elements[i]) == layerelementtype_instance {
			return_arr[pos] = layer_instance_get_instance(elements[i]);
			pos++;
		}
	}
	
	return return_arr;
}