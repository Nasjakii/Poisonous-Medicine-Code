
if scr_in_bounds(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && mouse_check_button_released(mb_left) {
	
	if room == Craftingroom {
		room_goto(Brewroom);
	} else {
		room_goto(Craftingroom);
	}
	
}