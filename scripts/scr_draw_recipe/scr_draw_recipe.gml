function scr_draw_recipe(recipe_name, xpos, ypos) {
	
	var box_size = 64;
	var ingredient_list = ds_map_find_value(recipe_map, recipe_name);
	

	for(var i = 0; i < ds_list_size(ingredient_list); i++) {
		var spr = ds_list_find_value(ingredient_list, i);
		var spr_width = sprite_get_width(spr) * 2;
		var spr_height = sprite_get_height(spr) * 2;
		var draw_x = xpos + i * spr_width * 1.5;
		var draw_y = ypos;
		
		
		var size = scr_relative_size(spr_width, spr_height, box_size);
		draw_sprite_stretched(spr, 1, draw_x, draw_y, size[0],size[1]);

		draw_rectangle(draw_x, draw_y, draw_x + box_size, draw_y + box_size, true);

	}
	

}