
if interact {
	//Quest
	var quest_name = "Test Collection quest";
	var data_map = scr_quest_map(quest_name);
	if scr_quest_get_state(data_map) == -1 {
		scr_quest_set_state(quest_name, 0);
	}
}