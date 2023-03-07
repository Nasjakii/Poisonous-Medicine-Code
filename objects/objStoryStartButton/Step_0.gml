
if scr_in_bounds_object(mouse_x, mouse_y, id) && l_click {

	global.continue_room = Pharmacy;
	
	room_goto(Start);
}