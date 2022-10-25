
function scr_clear_inventory(){
	var inventory = scr_get_inventory();
	for(var i = 0; i < array_length(inventory); i++) {
		scr_delete_item(i);
	}
}