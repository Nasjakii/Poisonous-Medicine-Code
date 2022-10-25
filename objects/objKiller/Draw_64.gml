

if monolog {
	state = state_talking;
	
	scr_draw_dialog(text_arr[dialog]);
	
	if dialog_active == false {
		
		monolog = false;
		
		objPaintingFamily.interact = false;
	}
}

if dialog {
	state = state_talking;
	
}