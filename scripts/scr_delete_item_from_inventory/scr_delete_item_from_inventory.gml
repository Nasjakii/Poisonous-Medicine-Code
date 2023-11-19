function scr_delete_item_from_inventory(item_name){
	for(var i = 0; i < global.inventory_size; i++) {
		if is_instanceof(inventory[i], objItemController.Item) {
			if inventory[i].name == item_name {
				inventory[i] = -1;
				return;
			}
		}
	}
	
	scr_error("item not found in inventory", item_name);
	return -1;
}