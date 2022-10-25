
function scr_item_interact(item_arr){
	
	var effect_array;
	effect_array[0] = 0;	//Damage
	
	
	//Poison
	if item_arr[5] > 0 {
		effect_array[0] = item_arr[5];
	}
	
	
	//reduce item count by 1
	scr_item_use(scr_get_item_index(item_arr[1]));
	
	
	
	return effect_array;
}