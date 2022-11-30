
if scr_in_bounds_object(mouse_x, mouse_y, id) && l_click {
	
	file_delete(string(game_project_name) + "_safe.ini");

	
	global.continue_room = Pharmacy;
	global.event_index = 0;
	
	room_goto(Start);
}