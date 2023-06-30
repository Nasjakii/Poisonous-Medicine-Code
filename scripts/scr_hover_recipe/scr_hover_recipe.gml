function scr_hover_recipe(recipe_name, xpos, ypos){

	
	var box_size = 64;
	var ingredient_list = ds_map_find_value(recipe_map, recipe_name);
	

	for(var i = 0; i < ds_list_size(ingredient_list); i++) {
		var spr = ds_list_find_value(ingredient_list, i);
		var spr_width = sprite_get_width(spr) * 2;
		var draw_x = xpos + i * spr_width * 1.5;
		var draw_y = ypos;
		

		var hovered = scr_hover_box_gui(draw_x, draw_y, draw_x + box_size, draw_y + box_size, false);
		if hovered {
			draw_set_alpha(1);
			var str = string(sprite_get_name(spr));
			var str = string_delete(str,1,3);
			draw_set_color(c_white);
			draw_rectangle(mouse_x_gui,mouse_y_gui,mouse_x_gui + string_width(str), mouse_y_gui + string_height(str), false);
			draw_set_color(c_dkgray);
			draw_text(mouse_x_gui, mouse_y_gui, str);
		}

	}
	


}