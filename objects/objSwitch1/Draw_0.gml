event_inherited();


if interact == true {
	
	//flip the switch
	if state == "closed" {
		image_speed = 1;
	} 
	if state == "open" {
		image_speed = -1;
	}
	
	//open or close the nearest door
	var inst_door = instance_nearest(x,y,attached_door);
	
	if state == "closed" {
		with(inst_door) {
			image_speed = 1;
		}
	} else {
		with(inst_door) {
			image_speed = -1;
		}
	}	
	
	interact = false;
} 

state = scr_open_and_close(state);


