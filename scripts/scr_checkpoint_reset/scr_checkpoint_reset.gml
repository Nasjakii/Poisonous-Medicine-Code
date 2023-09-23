function scr_checkpoint_reset(){
	scr_camera_zoom(objKiller, 0.9, 0.2, -0.01, 960, 540);
	
	if objCameraSpecial.zoom_target != noone exit;
	//all the reset shit
	objKiller.captured = false;
	objGuard.state = state_patrol;
	objGuard.target = noone;
	
	scr_camera_set("Player");
	
}