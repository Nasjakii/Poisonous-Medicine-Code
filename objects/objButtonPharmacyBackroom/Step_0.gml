
if scrInBounds(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && mouse_check_button_released(mb_left) {
	
	if room == Craftingroom {
		objGeneral.killer_x = 288;
	} else {
		objGeneral.killer_x = 736;
	}
	
	objGeneral.killer_y = 224;
	
	room_goto(PharmacyBackroom);
}