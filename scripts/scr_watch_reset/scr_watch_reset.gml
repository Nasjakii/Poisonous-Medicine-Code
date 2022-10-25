
 function scr_watch_reset(){

	objWatch.image_xscale = 1.2;
	objWatch.image_yscale = 1.2;

	var o = objGuiController;
	
	if instance_exists(o) {
		objWatch.x = gui_width - objWatch.sprite_width / 2 - o.watch_gap;
		objWatch.y = gui_height - objWatch.sprite_height / 2 - o.watch_gap;
	} else {
		//Error
		scr_error("not exists: ", o);
	}

}