
if draw_debug == true {
	

	ds_list_set(debug_list,0, "daytime: " + string(global.day_time));
	ds_list_set(debug_list,1, "rain: " + string(global.rain));
	
	draw_set_color(c_white);
	draw_set_font(foDebug);
	var i;
	for(i = 0; i < ds_list_size(debug_list); i++) {
		var str = ds_list_find_value(debug_list, i);
		draw_text(20,200+i*string_height(str), str);
	}
	scr_reset_text();
	
	#region chat
		if keyboard_check_released(vk_enter) {
			chat = !chat;
		}

		draw_set_color(c_dkgray);
		draw_set_alpha(0.7);
		draw_rectangle(0, gui_height, chat_width, gui_height - chat_width, false);
		
		if chat {
			draw_set_color(c_white);
			draw_set_font(foChat);
			draw_text_ext_transformed(0, gui_height - 40, keyboard_string, 40, chat_width, 1,1,0);
		} else {
			keyboard_string = "";
		}
	
		scr_reset_text();
	
	#endregion
}
