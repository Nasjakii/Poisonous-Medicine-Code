function scr_item_in_inventory(item_name){
	var inventory = scr_get_inventory();
	
	var found = false;
	for(var i = 0; i < global.inventory_size; i++) {
		var item = inventory[i];
		if item.name == item_name {
			found = true;
			break;
		}
	}
	return found;
}