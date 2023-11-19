
//Get all items that are on the desk 
var arr = inventory_local;

for(var i = 0; i < array_length(desk_array); i++) {
	//Item left on desk array
	if desk_array[i,0] != -1 {
		var left_item = desk_array[i,0].name; //item name
		scr_add_item_to_invetory(left_item);
		
	}
}


//Get item held
if global.item_holding != -1 {
	arr = global.item_holding;
}


//book array auf lokales array setzen




scr_safe_inventory();


