function scr_update_quests(){
	var active_list = scr_quest_get_all_active();
	var quest_map = scr_quest_map();
	
	for(var i = 0; i < ds_list_size(active_list); i++) {
		var quest_name = ds_list_find_value(active_list, i);
		
		var map = ds_map_find_value(quest_map, quest_name);
		
		
		//Collect quests
		var find_obj = ds_map_find_value(map, "Collect");
		if find_obj != undefined {

			if scr_item_in_inventory(object_get_sprite(find_obj)) {
				debug "collected"));
				scr_quest_set_state(quest_name, 1);
			}
		}
		
		
		
	}
}