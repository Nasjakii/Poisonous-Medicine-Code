
function scr_get_inventory(){

	var inventory_copy;
	for(var i = 0; i < array_length(objBook.inventory_items_arr); i++) {
		for(var i2 = 0; i2 < array_length(objBook.inventory_items_arr[i]); i2++) {
			inventory_copy[i,i2] = objBook.inventory_items_arr[i,i2];
		}
	}
	
	return inventory_copy;
}