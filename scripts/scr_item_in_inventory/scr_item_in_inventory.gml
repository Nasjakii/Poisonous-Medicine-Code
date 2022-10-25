function scr_item_in_inventory(spr_index){
	var inventory = scr_get_inventory();
	
	
	for(var i = 0; i < array_length(inventory); i++) {
		if spr_index == inventory[i,0] {
			return true;
		} 
	}
	//default case
	return false;
}