
all_paths = ds_map_create();

active_paths = ds_list_create();


//Instantiate Paths
#region clockwork fix
	var paths = ds_list_create();
	ds_list_add(paths, path_clockhouse_exit, path_clockhouse_byway, path_byway_clocktower, path_clockwork_fix);
	var rooms = ds_list_create();
	ds_list_add(rooms, Clockhouse, Room2, ClockworkByway, ClockworkTower);
	scr_path_create("Clockwork Failure", paths, rooms, objPerson);
#endregion


