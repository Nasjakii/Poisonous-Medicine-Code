if interact {
	objKiller.state = objKiller.state_playing;
	show_board = true;
	
	if keyboard_check_released(vk_space) {
		interact = false;
		objKiller.state = objKiller.state_idle;
	}
} else {
	show_board = false;
}