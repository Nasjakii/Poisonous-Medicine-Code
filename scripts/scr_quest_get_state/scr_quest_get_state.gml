//Retruns the state of a quest
function scr_quest_get_state(data_map){
	return ds_map_find_value(data_map, "Completed");
	//-1 = not active
	//0 = not Completed
	//1 = Completed
}