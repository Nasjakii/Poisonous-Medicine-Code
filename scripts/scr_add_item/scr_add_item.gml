
function scr_add_item(sprite, object, interactable, collectable, count = 1, poison_level = 0){

	var again = true;
	//Add count if item already exists
	for(var i = 0; i < global.inventory_size; i++) {
		if objBook.inventory_items_arr[i,1] == object {
			objBook.inventory_items_arr[i,4] += count;
			again = false;
			break;
		}
	}
	
	//Add new Item
	if again {
		for(var i = 0; i < global.inventory_size; i++) {
			if objBook.inventory_items_arr[i,0] == -1 {
				for(var i2 = 0; i2 < argument_count; i2++) {
					objBook.inventory_items_arr[i,i2] = argument[i2];
				}
				
				again = false;
				break;
			}
		}
	}
	
	
	if again {
		scr_error("Inventory full")
	}
}