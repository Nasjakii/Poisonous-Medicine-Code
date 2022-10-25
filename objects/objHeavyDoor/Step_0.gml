

state = scr_open_and_close(state);


if state == "open" && interact {
	scr_door_rooms(room, Menu);
} else {
	interact = false;
}