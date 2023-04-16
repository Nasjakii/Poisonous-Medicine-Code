
scr_create_subject("Guard");

#region stats

	patrol_speed = 10;
	return_speed = 3;
	chase_speed = 5;
	
	vision_range = 100;
	capture_range = 100;
#endregion

#region vars
	capture_time = 2 * room_speed;
	capture_timer = capture_time;

#endregion


#region states 
	state_display = "";

	#region state Idle
	
	state_idle = function() {
		state_display = "Idle";
		state = state_idle;
		
		
	}
	#endregion
	
	#region state patrol
	creation_x = x;
	creation_y = y;
	
	path_patrol = path_add();
	path_add_point(path_patrol, creation_x,creation_y, patrol_speed);
	path_add_point(path_patrol, x - 50, y, patrol_speed);
	path_add_point(path_patrol, x + 50, y, patrol_speed);
	
	
	state_patrol = function() {
		state_display = "Patrol";
		state = state_patrol;
		
		if path_index != path_patrol {
			if distance_to_point(creation_x, creation_y) < 5 {
				path_start(path_patrol, patrol_speed, path_action_reverse, false);
			} else state = state_return;
		}
			
	}
	#endregion
	
	#region state return
	
		state_return = function() {
			state_display = "Return";
			
			mp_potential_step(creation_x, creation_y, return_speed, false);
			
			if distance_to_point(creation_x, creation_y) < 5 {
				state = state_patrol;
			}

		}
	#endregion
	
	#region state follow
		target = objKiller;
		state_follow = function() {
			state_display = "Follow";
			
			path_end();
			if target.x > x x+= chase_speed;
			if target.x < x x-= chase_speed;
			
			if distance_to_object(target) <= capture_range {
				if capture_timer > 0 { 
					capture_timer--;
					debug capture_timer));
				} else {
					state = state_capture;
				}
			} else {
				capture_timer = capture_time;
			}
		}
	#endregion
	
	#region state sleep
	
		state_sleep = function() {
			state_display = "Sleep";
			
		}
	#endregion
	
	#region state capture
		state_capture = function() {
			state_display = "Capture";
			
			check;
			
			objKiller.can_move = false;
		}
	#endregion
	
#endregion


state = state_patrol;










