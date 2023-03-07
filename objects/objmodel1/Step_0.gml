if scr_in_bounds(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom) && l_click {
	with(objKiller) {
		skeleton_skin_set("Waiter");
		objGeneral.killer_skin = "Waiter";
	}
}