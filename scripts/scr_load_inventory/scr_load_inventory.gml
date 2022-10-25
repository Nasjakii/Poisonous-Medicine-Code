
function scr_load_inventory(){
	ini_open(string(game_project_name) + "_safe.ini");
	
	for(var i = 0; i < global.inventory_size; i++) {
		for(var i2 = 0; i2 < array_length(objBook.inventory_name_arr); i2++) {
			objBook.inventory_items_arr[i,i2] = ini_read_real("Inventory",objBook.inventory_name_arr[i2]+string(i), -1);
		}
	}
	ini_close();
}