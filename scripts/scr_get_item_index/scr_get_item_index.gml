
function scr_get_item_index(object = -1, sprite = -1){
	
	//sprite given
	if sprite != -1 {

		for(var i = 0; i < array_length(objBook.inventory_items_arr); i++) {
			if sprite == objBook.inventory_items_arr[i,0] {
				return i;
			}
		}
		
		
	} else if object != -1 {

		for(var i = 0; i < array_length(objBook.inventory_items_arr); i++) {
			if object == objBook.inventory_items_arr[i,1] {
				return i;
			}
		}
	}
	
	//No else needed bc of returns
	scr_error("Sprite or Object not found", sprite);
	return -1;
	
	
	
}