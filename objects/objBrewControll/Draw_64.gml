

var i;
for(i = 1; i < array_length(ds_bottles); i++) {
	with(ds_bottles[i]){
		scr_draw_gui_label(sprBrewLabel, i);
	}
}


if mouse_check_button_released(mb_left) {	
	var i;
	for(i = 1; i < array_length(hitbox); i++) {
		if hitbox[i] {
			
		}
	}
}



/*

var i;
for(i = 1; i < array_length(hover); i++) {
	if hover[i] >= 0 {
		
		if hover[i] >= 360 {
			
			draw_sprite(sprPotionDescription, i, ds_bottles[i].x * (gui_width / room_width),  ds_bottles[i].y * (gui_height / room_height));	
			window_set_cursor(cr_none);
			
			break;
		} else {
			window_set_cursor(cr_default);
		}
		
		//draw Circle
		var pie_radius = 64;
		var pie_width = pie_radius / 2;
		scr_draw_pie(mouse_x * ((gui_width / room_width)), mouse_y * ((gui_height / room_height)), hover[i], 360, c_black, pie_radius + 10,hover[i] / 180, pie_width + 10, 0);
		scr_draw_pie(mouse_x * ((gui_width / room_width)), mouse_y * ((gui_height / room_height)), hover[i], 360, c_white, pie_radius,hover[i] / 180, pie_width, 0);
		
	}
	
}

*/



