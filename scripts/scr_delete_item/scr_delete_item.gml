
function scr_delete_item(position = -1, sprite = -1, object = -1){
	for(var i = 0; i < global.inventory_size; i++) {
		if position != -1 {
			scr_item_reset(position);
			
		}
	}
	
}