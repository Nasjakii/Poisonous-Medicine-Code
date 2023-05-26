function scr_path_create(custom_path_name, path_list, room_list, object){
	
	var o = objPathController;
	
	var custom_path = ds_map_create();
	var times = ds_list_create();
	
	for(var i = 0; i < ds_list_size(path_list); i++) {
		var _path = ds_list_find_value(path_list, i);
		
		var time = scr_get_path_duration(_path);
		ds_list_add(times, time);
	}
	
	
	ds_map_add_list(custom_path, "Paths", path_list);
	ds_map_add_list(custom_path, "Rooms", room_list);
	ds_map_add(     custom_path, "Room", ds_list_find_index(room_list, 0)); //Current room
	ds_map_add_list(custom_path, "Times", times);
	ds_map_add(     custom_path, "State", 0); //0 not started
										      //1 active
											  //2 paused
											  //3 finished
	ds_map_add(     custom_path, "Progress", 0); //progress in each room
	ds_map_add(     custom_path, "Object",object);
		
	ds_map_add_map(o.all_paths,custom_path_name, custom_path)
}