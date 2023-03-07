
if scr_in_bounds(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && l_click {
	
	if room == Craftingroom {
		objGeneral.killer_x = 288;
	} else {
		objGeneral.killer_x = 536;
	}
	
	objGeneral.killer_y = 224;
	
	room_goto(PharmacyBackroom);
}