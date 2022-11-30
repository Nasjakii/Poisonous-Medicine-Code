


if interact && global.event_index >= 4 {

	scr_door_rooms(Room2, "middle", Pharmacy, "middle");
	
	interact = false;
} else {
	
	if interact {
		//forced dialog with Peter
		objPeter.interact = true;
		interact = false;
	}
}

