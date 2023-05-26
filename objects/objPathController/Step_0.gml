active_paths = scr_paths_active();

//debug ds_list_size(active_paths)));  

scr_paths_step();


if keyboard_check_released(ord("1")) {
	room_goto(Room3);
}
if keyboard_check_released(ord("2")) {
	room_goto(Room3_1);
}