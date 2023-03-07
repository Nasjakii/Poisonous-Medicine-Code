//returns -1 if nothing is clicked

function scr_click_object_list(obj_array){
	
	var hitbox = [];
	
	//Hitboxes
	for(var i = 0; i < array_length(obj_array); i++) {
		var xpos = obj_array[i].x - obj_array[i].sprite_xoffset;
		var ypos = obj_array[i].y - obj_array[i].sprite_yoffset;
		var spr_width = obj_array[i].sprite_width;
		var spr_height = obj_array[i].sprite_height;
	
		hitbox[i] =  point_in_rectangle(mouse_x,mouse_y,xpos,ypos,xpos + spr_width, ypos + spr_height);
	
	}
	
	if mouse_check_button_pressed(mb_left) {
		var i;
		for(i = 0; i < array_length(hitbox); i++) {
			if hitbox[i] {
				return i;
			}
		}
	}
	
	return -1; //default
	
}