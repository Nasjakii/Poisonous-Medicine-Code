function scr_dialog_draw_text(str){
	
	static pretty_str_index = 0;
	
	if keyboard_check_released(vk_space) {
		pretty_str_index = 0;
	}
	
	pretty_str_index++;
	
	var spr = sprDialogWindow;
	draw_sprite(spr, 0, (gui_width - sprite_get_width(spr)) / 2, gui_height - sprite_get_height(spr));
	
	var xpos = (gui_width - sprite_get_width(sprDialogWindow)) / 2;
	var ypos = gui_height - sprite_get_height(sprDialogWindow);
	
	var pretty_str = string_copy(str,0,pretty_str_index);
	
	scr_set_text(c_black,fa_left,fa_top, fo1900);
	draw_text_ext(xpos + 60, ypos + 60, pretty_str, string_height(pretty_str),sprite_get_width(sprDialogWindow)-120);
	scr_reset_text();
}