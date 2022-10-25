
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
}
