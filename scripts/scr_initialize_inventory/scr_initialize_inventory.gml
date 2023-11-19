function scr_initialize_inventory(){
	for(var i = 0; i < global.inventory_size; i++) {
		inventory[i] = -1;
	}
	
	scr_load_inventory();


}