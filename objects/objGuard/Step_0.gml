

if keyboard_check_released(ord("1")) {
	if target != noone target = noone else target = objKiller;
}


state();




if distance_to_object(target) < vision_range && scr_visible(id, target, objBlockade) {
	state = state_follow;
	
	if distance_to_object(target) < capture_range {
		
		state = state_capture;
		
	} else {
		capturing = false;
	}
} else {
	state = state_patrol;
}
