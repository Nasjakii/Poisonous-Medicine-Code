//Adding a key with a value to a quest
function scr_quest_map_add_key(quest_name, key_name, value){
	
	//Quest map
	var quest_map = objQuestController.quest_map;
	//Check if Quest exists
	if !is_undefined(ds_map_find_value(quest_map, quest_name)) {
		//The quest_data_map
		var quest_data_map = ds_map_find_value(quest_map, quest_name);

				//Add the key to the quest data map if the key does not exist
		if is_undefined(ds_map_find_value(quest_data_map, key_name)) {
			ds_map_add(quest_data_map, key_name, value);
		} else {
			scr_error("Quest data Key already exists: ", key_name);
		}
	} else {
		scr_error("Quest does not exist: ", quest_name);
	}
	
}