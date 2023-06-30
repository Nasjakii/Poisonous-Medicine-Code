active_paths = scr_paths_active();



scr_paths_step();


if room == Room3 || room == Room3_1 {
	if keyboard_check_released(ord("1")) {
		room_goto(Room3);
	}
	if keyboard_check_released(ord("2")) {
		room_goto(Room3_1);
	}
}


