
path_speed_walking = 2;
pause = 5 * room_speed;


if scr_event_equals("Clockwork", true) {
	
	if room == ClockworkTowerMain {
		instance_destroy(self);
	}
	
	alarm[0] = 10 * room_speed; //starting to walk after 10 secs
	
}





						 


