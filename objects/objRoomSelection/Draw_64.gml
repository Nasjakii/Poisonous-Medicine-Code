

scr_set_text(c_white,fa_left,fa_top,foMenu);
var str = "Select Room"
draw_text(x,y, str);
draw_rectangle(x,y - string_height(str) / 3,x+string_width(str),y+string_height(str) / (4 / 3), true);

hitbox[0] = point_in_rectangle(mouse_x, mouse_y,x,y - string_height(str) / 3,x+string_width(str),y+string_height(str) / (4 / 3));


if hitbox[0] && l_click && show_room_list == false {
	show_room_list = true;
} else if show_room_list == true && hitbox[0] && l_click {
	show_room_list = false;
}

if show_room_list == true {
	draw_set_valign(fa_top);
	var str_h = string_height(str);

	for(var i = 0; i < ds_list_size(ds_rooms); i++) {
		draw_text(x, y + (i + 1) * str_h, room_get_name(ds_list_find_value(ds_rooms, i)));	
		hitbox[i+1] =  point_in_rectangle(mouse_x, mouse_y,x,y + (i + 1) * str_h,x+string_width(str),y+ (i + 2) * str_h);
		draw_rectangle(x,y + (i + 1) * str_h,x+string_width(str),y+ (i + 2) * str_h, true);

		if hitbox[i+1] && l_click {
			global.continue_room = ds_list_find_value(ds_rooms, i);
			room_goto(Start);
			break;
		}
	}
}


scr_reset_text();