
function scr_list_to_array(ds_list){
	
	var arr;
	for(var i = 0; i < ds_list_size(ds_list); i++) {
		arr[i] = ds_list_find_value(ds_list, i);
	}
	
	return arr;
}