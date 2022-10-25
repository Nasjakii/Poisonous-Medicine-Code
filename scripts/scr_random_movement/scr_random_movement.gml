

function scr_random_movement(border_left, border_right){
	
	#region Variablen instanziieren
	if !variable_instance_exists(id, "idle_time") {
		idle_time = 0;
	}
	
	if !variable_instance_exists(id, "move_direction") {
		move_direction = 0;
	}
	#endregion
	
	if idle_time >= 0 {
	
		if move_direction == 0 && bbox_right < border_right {
			x += 2.5;
		} else {
			move_direction = 1;
		
			idle_time = irandom_range(1 * room_speed, 5 * room_speed);
		}
	
		if move_direction == 1 && bbox_left > border_left {
			x -= 2.5;
		} else {
			move_direction = 0;
		
			idle_time = irandom_range(1 * room_speed, 5 * room_speed);
		}
	} else {
		idle_time--;
	}

}