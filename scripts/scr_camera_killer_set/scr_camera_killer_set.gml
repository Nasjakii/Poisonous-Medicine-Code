
function scr_camera_killer_set(object){
	if instance_exists(object) {
		global.camera_follow_object = object;
	} else {
		scr_error("Set camera follow to not existing Object", global.camera_follow_object);
	}
}