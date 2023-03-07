
//-1 inactive
//0 active
//1 completed

function scr_quest_set_state(quest_name, state){
	var quest_data_map = scr_quest_map(quest_name);
	ds_map_set(quest_data_map, "Completed", state); //0 Says that the Quest is not completed
	
	
	//Set quest to active
	if state == 0 {
		//If quest is not already in list
		if ds_list_find_index(objQuestController.active_quests, quest_name) == -1 {
			//Add quest to active quests
			ds_list_add(objQuestController.active_quests, quest_name);
			//Show Icon with mark in top left corner
			objGuiController.sprBookIcon_subimg = 1;
			
		
		} else {
			scr_error("Quest already added to active Quests", quest_name);
		}
	}
	
	if state == 1 {
		//If quest is in list
		if ds_list_find_index(objQuestController.active_quests, quest_name) != -1 {
			//done
			debug quest_name) + " done"); 
			
			var index = ds_list_find_index(objQuestController.active_quests, quest_name);
			ds_list_delete(objQuestController.active_quests, index);
		}
	}

	
}