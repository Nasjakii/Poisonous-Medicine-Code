
if interact {
	

	if global.item_holding == sprKey {
		locked = false;
	}
	
	if !locked scr_door_rooms(Room3, "middle", Room3_1, "middle");
	
	interact = false;
} 

