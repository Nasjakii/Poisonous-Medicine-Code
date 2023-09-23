
var mid_x = (bbox_left + bbox_right) / 2;
vision_x = [mid_x, x + vision_range * image_xscale, x + vision_range * image_xscale];
vision_y = [bbox_top,  bbox_top + sprite_height,  bbox_top - sprite_height]

if keyboard_check_released(ord("1")) {
	if target != noone target = noone else target = objKiller;
}


state();

if target == noone exit;

if scr_line_of_sight(id, target, objBlockade) && scr_in_vision(target, vision_x, vision_y) {
	state = state_capture;
	
	
} else {
	if distance_to_object(target) > vision_range state = state_patrol; //too far away
	capturing = false;
}

