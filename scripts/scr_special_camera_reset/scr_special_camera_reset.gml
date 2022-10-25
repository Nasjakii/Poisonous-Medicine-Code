function scr_special_camera_reset(){
	
	//TODO verbindung zu Camera controller
	
	//view_camera[0] = camera_create_view(0,0,1920,1080);
	objKiller.can_move = true;
	
	if instance_exists(objCameraSpecial) {
		
		instance_destroy(objCameraSpecial);
		
		instance_destroy(objViewSpecial);
		
		//debug objViewSpecial.instance_count));
		if !layer_exists("General") layer_create(-1, "General");
		instance_create_layer(0,0,"General",objCameraKiller);
		
		//debug camera_get_active()));
		
		
	}
	
}