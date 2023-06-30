function scr_paths_step(){
	
	var map = scr_get_paths_map();
	
	for(var i = 0; i < ds_list_size(active_paths); i++) {
		//go through all active paths and add to step
		var path_name = ds_list_find_value(active_paths, i);
		var path_map = ds_map_find_value(map, path_name);
		var path_list = ds_map_find_value(path_map, "Paths");
		
		var rooms = ds_map_find_value(path_map, "Rooms");
		var curr_room = ds_map_find_value(path_map, "Room");
		var curr_room_index = ds_list_find_index(rooms, curr_room);
		
		var obj = ds_map_find_value(path_map, "Object");
		
		var duration_list = ds_map_find_value(path_map, "Times"); //times in steps
		var path_duration = ds_list_find_value(duration_list, curr_room_index);
		var progress = ds_map_find_value(path_map, "Progress"); //index 
		
		if curr_room == room {
			var curr_path = ds_list_find_value(path_list, curr_room_index);
			
			//create object in current room 
			var path_x0 = path_get_point_x(curr_path, 0);
			var path_y0 = path_get_point_y(curr_path, 0);
			if !instance_exists(obj) {	
				var inst = instance_create_layer(path_x0, path_y0, layer, obj); //Todo put object on layer behind or infront of player
				with(inst) {
					path_start(curr_path, 1, path_action_stop, true);
					
					path_position = progress / path_duration; //if you join obj room
					scr_debug_info("Progress", progress);
				}
			}
		} 
		
		debug progress) + " / " + string(path_duration) + "progress");
		
		if progress >= path_duration {
			//set new room as current room
			var next_room = ds_list_find_value(rooms, curr_room_index + 1);
			ds_map_set(path_map, "Room", next_room);
			ds_map_set(path_map, "Progress", 0); //reset
			instance_destroy(obj);
		} else {
			progress += 0.01; //add to progress
			ds_map_set(path_map, "Progress", progress);
		}
		
		
		
		
		
		
	}


}