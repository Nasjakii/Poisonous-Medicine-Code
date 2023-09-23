function scr_camera_zoom(_target, _zoom_start, _zoom_end, _zoom_speed, _view_width, _view_height){
	
	scr_switch_camera("Custom");
	scr_create_single_object(objCameraSpecial);

	with(objCameraSpecial){
		if zoom_target != noone exit; //currently being used
		zoom_target = _target;
		zoom_start = _zoom_start;
		zoom_end = _zoom_end;
		zoom_speed = _zoom_speed;
		zoom_width = _view_width;
		zoom_height = _view_height;
	}
	
	
}