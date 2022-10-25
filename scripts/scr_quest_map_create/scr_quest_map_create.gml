
function scr_quest_map_create(name){
	
	
	var quest_data_map = ds_map_create();
	ds_map_add(quest_data_map, "Completed", -1) //Automatically adds Completed = -1 for not active
	
	if is_undefined(ds_map_find_value(objQuestController.quest_map, name)) {
		ds_map_add_map(objQuestController.quest_map, name, quest_data_map);
		
	} else {
		scr_error("Quest Key name already exists: ", name);
	}
	
	
	//Add keys like:
	
	//Mission - Description
	//Task - What to do
	
	//With scr_quest_map_add_key();
}