
scr_create_subject("Guard");

#region stats

	patrol_speed = 2;
	
	vision_range = 300;

	target = noone;
	
#endregion

#region vars
	capture_time = 3 * room_speed;
	capture_timer = capture_time;

	noise_x = -1;
	noise_y = -1;
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
			image_xscale = 1;
		}
		if x > creation_x + patrol_width / 2 {
			x_speed = -patrol_speed;
			image_xscale = -1;
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
				scr_checkpoint_reset();
				
			} else {
				capture_timer--;
			}
		}
	#endregion
	
#endregion


state = state_patrol;










