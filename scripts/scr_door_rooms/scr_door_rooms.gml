function scr_door_rooms(room1, pos1, room2, pos2){
	
	//pos = relative position to the door, left right or middle
	
	var o = objGeneral;
	
	if room_exists(room1) && room_exists(room2) {
		if room == room1 {

			o.killer_spawn_object = id.object_index;
			o.killer_spawn_pos = pos2;
			room_goto(room2);
		} else {
			
			o.killer_spawn_object = id.object_index;
			o.killer_spawn_pos = pos1;
			room_goto(room1);
		}
	} else {
		scr_error("Room does not exist:", room1); //or room2
	}
	
	
}