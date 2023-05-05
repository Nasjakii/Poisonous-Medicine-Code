
scr_create_subject("Guard");

#region stats

	patrol_speed = 2;
	return_speed = 3;
	chase_speed = 5;
	
	vision_range = 300;
	capture_range = 60;
#endregion

#region vars
	capture_time = 3 * room_speed;
	capture_timer = capture_time;

#endregion


#region states 
	state_display = "";

	#region state Idle
	
	state_idle = function() {
		state_display = "Idle";
		
		
	}
	#endregion
	
	#region state patrol
	creation_x = x;
	x_speed = patrol_speed;
	patrol_width = 200;
	
	state_patrol = function() {
		state_display = "Patrol";
		
		if !position_meeting(x + sign(x_speed) * sprite_width / 2 + x_speed, y, objBlockade) {
			x += x_speed;
		} else {
			x_speed *= -1; // turn around
		}
		
		if x < creation_x - patrol_width / 2 {
			x_speed = patrol_speed;
		}
		if x > creation_x + patrol_width / 2 {
			x_speed = -patrol_speed;
		}

			
	}
	#endregion
	

	#region state follow
		target = objKiller;
		state_follow = function() {
			state_display = "Follow";
			
			if target == noone {
				state = state_patrol;
				return;
			}
			
			if target.x > x {
				x += chase_speed;
			} else {
				x -= chase_speed;
			}
			
		}
	#endregion
	
	#region state sleep
		sleep_time = 10 * room_speed;
		sleep_timer = sleep_time;
		state_sleep = function() {
			state_display = "Sleep";
			sleep_timer--;
			if sleep_timer == 0 {
				state = state_idle;
			}
			
		}
	#endregion
	
	#region state capture
		capturing = false;
		state_capture = function() {
			state_display = "Capture";
			if capturing = false {
				capturing = true;
				capture_timer = capture_time; // reset
			}

			if capture_timer <= 0 {
				objKiller.captured = true;
				capture_timer = capture_time;
			} else {
				capture_timer--;
			}
		}
	#endregion
	
#endregion


state = state_patrol;










