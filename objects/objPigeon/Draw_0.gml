
draw_self();

if show_data == true {

	draw_set_color(c_green);
	draw_text(x,y-30, string(path_position) + " path_pos");
	draw_text(x,y+64, string(timer) + " timer");
	draw_set_color(c_white);

	var i;
	for(i = 0; i < ds_list_size(ds_spot_list); i++) {
		var spot = ds_list_find_value(ds_spot_list,i);
		draw_text(spot.x, spot.y, ds_list_find_value(ds_spot_used_list, i));
	}

}
