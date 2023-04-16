

state();


if keyboard_check_released(ord("1")) {
	state = state_idle;
}
if keyboard_check_released(ord("2")) {
	state = state_patrol;
}
if keyboard_check_released(ord("3")) {
	state = state_follow;
}



if distance_to_object(objKiller) < vision_range {
	if state != state_follow state = state_follow;
} else {
	state = state_patrol;
}

