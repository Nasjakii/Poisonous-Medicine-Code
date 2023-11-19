//returns array
function scr_get_inventory(){

	var inventory_copy;
	for(var i = 0; i < array_length(objBook.inventory); i++) {
		inventory_copy[i] = objBook.inventory[i];
	}
	
	return inventory_copy;
}