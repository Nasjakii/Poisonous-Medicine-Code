function scr_quest_create(quest_name, starting_state = 0){
	//create quest
	var data_map = scr_quest_map(quest_name);
	//if quest not active, start it
	if scr_quest_get_state(data_map) == -1 {
		scr_quest_set_state(quest_name, starting_state);
	}
}