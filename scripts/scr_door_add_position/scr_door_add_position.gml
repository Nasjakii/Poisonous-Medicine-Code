function scr_door_add_position(door_id, room_id, xpos, ypos){
	
	ds_map_add(objGeneral.door_position_map, string(door_id) + string(room_id) + "x", xpos);
	ds_map_add(objGeneral.door_position_map, string(door_id) + string(room_id) + "y", ypos);
	
}