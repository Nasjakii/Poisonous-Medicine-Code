

if path_position == 1 {
	if pause < 0 {
		//Enter the Building again
		instance_destroy(self);
	}
	
	//Fixing the clock
	pause--;
	if pause == 0 {
		//Waling back
		path_reverse(path_clock);
		path_start(path_clock, path_speed_walking, path_action_stop, false);
	}
} 




