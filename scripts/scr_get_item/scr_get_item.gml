function scr_get_item(item_index){
	var item_arr = scr_get_inventory();
	var reArr = item_arr[item_index];
	
	if reArr[0] != -1 {
		return reArr;
	} else {
		scr_error("Trying to use null item:", item_index);
	}
}