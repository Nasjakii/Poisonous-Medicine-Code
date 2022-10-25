

for(var i = 0; i < ds_list_size(list_drop_x); i++) {
	var ypos = ds_list_find_value(list_drop_y,i);
	var speed_y = ds_list_find_value(list_drop_speed, i);
	var xpos = ds_list_find_value(list_drop_x,i);
	var y_dest = ds_list_find_value(list_drop_y_dest, i);
	
	if ypos >= y_dest || ypos > room_height {
		ds_list_delete(list_drop_x,i);
		ds_list_delete(list_drop_y,i);
		ds_list_delete(list_drop_speed,i);
		ds_list_delete(list_drop_y_dest,i);
		
		ds_list_add(list_splash_x, xpos);
		ds_list_add(list_splash_y, ypos);
		ds_list_add(list_splash_index, 0);
	} else {
	
		draw_sprite(sprRain, 1, xpos, ypos);
		ds_list_set(list_drop_y, i, ypos + speed_y);
		
		draw_set_color(c_red);
		//draw_circle(xpos,y_dest,5,false);
		draw_set_color(c_black);
		
	}
	
}

for(var i = 0; i < ds_list_size(list_splash_x); i++) {
	var sp_index = ds_list_find_value(list_splash_index, i);
	var sp_xpos = ds_list_find_value(list_splash_x, i);
	var sp_ypos = ds_list_find_value(list_splash_y, i);
	
	draw_sprite(sprSplash, sp_index, sp_xpos, sp_ypos);
	
	if sp_index > sprite_get_number(sprSplash) - 1{
		ds_list_delete(list_splash_index, i);
		ds_list_delete(list_splash_x, i);
		ds_list_delete(list_splash_y, i);
	} else {
		ds_list_set(list_splash_index, i, sp_index + 0.2);
	}
}