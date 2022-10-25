					//The index in the inventory
function scr_item_use(index){
	
	
	var temp_inventory = scr_get_inventory();
	
	//take 1 count
	temp_inventory[index,4]--;

	if temp_inventory[index,4] <= 0 {
		scr_delete_item(index);
		objKiller.item_holding = -1;
	}
	
	
	
	
}