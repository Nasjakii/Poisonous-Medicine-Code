
function scr_safe_inventory(){
	
	var inv = scr_get_inventory();
	
	for(var i = 0; i < array_length(inv); i++) {
		for(var i2 = 0; i2 < array_length(objBook.inventory_name_arr); i2++) {
			scr_safe("Real","Inventory",objBook.inventory_name_arr[i2] + string(i), inv[i,i2], "book");
		}

	}

}