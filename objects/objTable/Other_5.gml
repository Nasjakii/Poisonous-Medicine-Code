
//Get all items that are on the desk 
var arr = inventory_array_local;

for(var i = 0; i < array_length(desk_array); i++) {
	//Item left on desk array
	if desk_array[i,0] != -1 {
		for(var i2 = 0; i2 < array_length(arr); i2++) {
			//find free spot
			if arr[i2,0] == -1 {
				//get array from instance
				var arr2 = scr_list_to_array(desk_array[i,0].ds_list_values);
				arr = scr_array_set_in(arr,i2,arr2);
				break;
			}
		}
	}
}


//Get item held
if global.item_holding[0] != -1 {
	for(var i = 0; i < array_length(arr); i++) {
		//find free spot
		if arr[i,0] == -1 {
			arr = scr_array_set_in(arr, i, global.item_holding);
		}
	}
}


//book array auf lokales array setzen

for(var i = 0; i < array_length(arr); i++) {
	scr_item_reset(i);
	scr_add_item(arr[i,0], arr[i,1], arr[i,2], arr[i,3], arr[i,4], arr[i,5]);
}



scr_safe_inventory();


