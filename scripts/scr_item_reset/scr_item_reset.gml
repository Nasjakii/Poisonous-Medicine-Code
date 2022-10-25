
function scr_item_reset(position){
	
	for(var i = 0; i < array_length(objBook.inventory_name_arr); i++) {

		objBook.inventory_items_arr[position,i] = -1;
	}
	
}