function scr_special_camera_create(x1,y1,x2) {
	
	if !instance_exists(objViewSpecial) {
		//Destroy all views and cameras
		var i2;
		for(i2 = 0; i2 <= 7; i2++) {
			if view_visible[i2] == true {
				view_visible[i2] = false;
				camera_destroy(view_camera[i2]);
			}
		}

		
		objKiller.can_move = false;
		
		if !layer_exists("Views") layer_create(-1, "Views");
		
		var inst = instance_create_layer(x1,y1,"Views", objViewSpecial);
		inst.image_xscale = x2 - x1;
		
		//Auto width for right scale
		var ratio = 1080 / 1920;
		inst.image_yscale = (x2-x1) * ratio;
	
		instance_create_layer(0,0,"General",objCameraSpecial);
		instance_destroy(objCameraKiller);
	}
}