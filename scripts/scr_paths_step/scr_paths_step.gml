function scr_paths_step(){
	
	var map = scr_get_paths_map();
	
	for(var i = 0; i < ds_list_size(active_paths); i++) {
		//go through all active paths and add to step
		var path_name = ds_list_find_value(active_paths, i);
		var paths = ds_map_find_value(map, path_name);
		var curr_room = ds_map_find_value(path_name, "Room");
		var curr_room_index = ds_list_find_index(rooms, curr_room);
		var rooms = ds_map_find_value(path_name, "Rooms");
		var obj = ds_map_find_value(path_name, "Object");
		
		var duration_list = ds_map_find_value(path_name, "Times"); //times in steps
		var path_duration = ds_list_find_value(duration_list, curr_room_index);
		//index 
		var progress = ds_map_find_value(path_name, "Progress")
		
		if curr_room == room {
			var curr_path = ds_list_find_value(paths, curr_room);
			
			//create object in current room 
			var path_x0 = path_get_point_x(curr_path, 0);
			var path_y0 = path_get_point_y(curr_path, 0);
			if !instance_exists(obj) {	
				var inst = instance_create_layer(path_x0, path_y0, layer, obj); //Todo put object on layer behind or infront of player
				with(inst) {
					path_start(curr_path, 1, path_action_stop, true);
					
					path_position = progress; //if you join obj room
					scr_debug_info("Progress", progress);
				}
			}
		} 
		
		if progress >= path_duration {
			//set new room as current room
			var next_room_index = ds_list_find_value(rooms, curr_room_index) + 1;
			ds_map_set(path_name, "Room", next_room_index);		
			ds_map_set(path_name, "Progress", 0); //reset
		} else {
			progress += 0.1; //add to progress
			ds_map_set(path_name, "Progress", progress);
		}
		
		
		
		
		
		
	}


}