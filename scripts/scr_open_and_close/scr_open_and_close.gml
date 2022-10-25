
function scr_open_and_close(loc_state){
	if image_index > image_number - 1 && loc_state == "closed" {
		loc_state = "open";
		image_speed = 0;
	}
	if image_index < 1 && loc_state == "open" {
		loc_state = "closed";
		image_speed = 0;
	}
	
	return loc_state;
}