///@description add an item by the item_name defined in the objItemController
function scr_add_item_to_invetory(item_name){


	for(var i = 0; i < global.inventory_size; i++) {
		if objBook.inventory[i] == -1 {
			var item = ds_map_find_value(objItemController.item_map, item_name);
			if is_undefined(item) scr_error("Item not found", item);
			objBook.inventory[i] = item;
			break;
		}
	}
	
	//TODO inventory full
	
	
}

function scr_create_potion(potion_name, color, effect) {
	//TODO right sprite
	objItemController.add_item(potion_name, sprPotion1, true, effect);
}
