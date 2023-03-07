

if special_interact_index <= global.event_index && scr_in_range(objKiller) {
	interact = true;
}


if interact {
	scr_draw_dialog(dialog_index);
}

if dialog_index == 1 { //test
	//draw_sprite(sprPaper1,1,gui_width / 2 - sprite_get_width(sprPaper1) / 2, 0);
}





