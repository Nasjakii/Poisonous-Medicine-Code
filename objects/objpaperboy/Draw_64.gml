

if special_interact_index <= global.event_index && scr_in_range(objKiller) {
	interact = true;
}


if interact {
	scr_draw_dialog(dialog_index);
}

if dialog_index == 1 { //test
	scr_quest_set_state("Kill Bartholomew", 0); //TODO activate quest when looking at paper
	show_paper = true;
	dialog_index++;
}

if show_paper {
	draw_sprite(sprPaper1,1,gui_width / 2 - sprite_get_width(sprPaper1) / 2, 0);
	if keyboard_check(vk_space) show_paper = false;
}



