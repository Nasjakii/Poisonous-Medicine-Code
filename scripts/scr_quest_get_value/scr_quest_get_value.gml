
function scr_quest_get_value(quest_name, key_string){
	
	var quest_data_map = scr_quest_map(quest_name);
	var value = ds_map_find_value(quest_data_map, key_string);
	
	if (!is_undefined(value)) {
		return value;
	} else {
		//Key not found
		scr_error("Quest data key not found", key_string);
		return -1;
	}
	
}