//Returns all active Quests as a list
function scr_quest_get_all_active(){
	var active_list = ds_list_create();
	
	if object_get_name(object_index) == "objQuestController" {
	
		var quest_map = scr_quest_map();
	
		var map_keys = ds_map_keys_to_array(quest_map);
		for(var i = 0; i < ds_map_size(quest_map); i++) {
	
			var quest_name = map_keys[i];
			
			var quest_data_map = ds_map_find_value(quest_map, quest_name);
			
		
			if scr_quest_get_state(quest_data_map) == 0 {
				
				
				ds_list_add(active_list, quest_name);
			}

		}
		
		scr_quest_save();
	} else {
		//Get list from objQuestController
		active_list = objQuestController.active_quests;

	}
	return active_list;
}