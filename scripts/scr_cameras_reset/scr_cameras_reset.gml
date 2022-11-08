function scr_cameras_reset(){
	//resets all cameras
	
	var i2;
	for(i2 = 0; i2 <= 7; i2++) {
		if view_visible[i2] == true {
			view_visible[i2] = false;
			camera_destroy(view_camera[i2]);
		}
	}
}