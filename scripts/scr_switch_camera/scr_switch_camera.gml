function scr_switch_camera(next_cam){
	var curr_cam = objCameraController.curr_view;
	
	if curr_cam != next_cam {
		
		scr_special_camera_reset();
		instance_destroy(objCameraKiller);
		
		objCameraController.curr_view = next_cam;
	} else {
		return false;
	}
}