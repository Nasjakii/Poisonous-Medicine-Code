

if interact == true && global.event_index >= 1{
	
	scr_door_rooms(Pharmacy, "middle", PharmacyBackroom, "middle");
	
	
	interact = false;
} else {
	
	if interact {
		//forced dialog with Peter
		objPeter.interact = true;
		interact = false;
	}
}

