//only called by player object
function scr_spawn_player(){
	
	var o = objGeneral;
	
	if o.killer_spawn_object != noone {
		
		switch(o.killer_spawn_pos) {
			case("left"):
				x = o.killer_spawn_object.bbox_left;
				
			break;
			case("right"):
				x = o.killer_spawn_object.bbox_right;
			break;
			case("middle"):
				x = (o.killer_spawn_object.bbox_right + o.killer_spawn_object.bbox_left) / 2;
			break;
			default:
				x = 0;
				scr_error("Wrong position string", o.killer_spawn_pos);
			break;
		}
		
		y = o.killer_spawn_object.bbox_top;
		

	} else {
		x = o.killer_x;
		y = o.killer_y;
	}
}