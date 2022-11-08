

if monolog {
	state = state_talking;
	//TODO Killer object ? -> killer dialog
	scr_draw_dialog();
	
	if dialog_active == false {
		
		monolog = false;
		
		objPaintingFamily.interact = false;
	}
}

if dialog {
	state = state_talking;
	
}