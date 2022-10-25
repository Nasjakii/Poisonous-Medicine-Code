
function scr_quest_map(map_name = ""){

	var map = objQuestController.quest_map;
	
	if (map_name == "") {
		//Return map of all quests
		return map;
	} else {
		//Return specific quest map
		var quest = ds_map_find_value(map, map_name);
		if (!is_undefined(quest)) {
			return quest;
		} else {
			scr_error("Questmap not found", map_name);
			return -1;
		}
	}
	
	
}