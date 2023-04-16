
function scr_draw_quest_page(quest_map_name, side){
	
	#region get data
		var quest_data_map = scr_quest_map(quest_map_name);
		//all keys of the quest
		var quest_data_keys = ds_map_keys_to_array(quest_data_map);
		
		var type = ds_map_find_value(quest_data_map, "Type"); //quest type
	#endregion
	
	#region configure page positions	
		//distances to the edges
		var x_margin = 60; 
		var y_margin = 30; 
	
		var page_l = 0;
		if side == "left" {
			page_l = page_left_x + x_margin;
		} else {
			page_l = page_right_x + x_margin;
		}
		
		var paragraph_gap = 100;
	#endregion
	
	draw_set_font(foCustom);
	draw_set_color(c_black);
	
	#region Title
		var title_str = quest_map_name;
		var title_sep = 55;
		var title_width = book_page_width - x_margin * 2;
		draw_text_ext(page_l + x_margin / 2, page_up_y + y_margin, title_str, title_sep, title_width);
		var title_height = string_height_ext(title_str, title_sep, title_width);
	#endregion
	
	#region Quest Description
		var str = ds_map_find_value(quest_data_map, "Task");
		var seperation = 55;
		var max_width = book_page_width - x_margin * 2
			
		draw_text_ext(page_l, page_up_y + y_margin + paragraph_gap, str, seperation, max_width);	
		
		var description_height = string_height_ext(str, seperation, max_width);
	#endregion
	
	var lower_y = y_margin + title_height + description_height + paragraph_gap * 2;
	
	for(var i = 0 ; i < array_length(quest_data_keys); i++) {
			
		switch(type) {
			case("Collect"):
				var box_size = 60;
				
				var collect_list = ds_list_create();
				ds_list_clear(collect_list);
				if ds_map_is_list(quest_data_map, "Collect") {
					collect_list = ds_map_find_value(quest_data_map, "Collect");
				} else {
					collect_list = 0;
				}

				//collect list 
				for(var list_index = 0; list_index < ds_list_size(collect_list); list_index++) {
					#region Draw the items that need to be collected
						var xpos = page_l + box_size * i;
						var ypos = lower_y;
					
						draw_rectangle(xpos, ypos, page_l + box_size * (i + 1), lower_y + box_size, true);

						var spr = ds_list_find_value(collect_list, list_index);
						var spr_w = sprite_get_width(spr);
						var spr_h = sprite_get_height(spr);
						var stretch_to = box_size;
						var size = scr_relative_size(spr_w, spr_h, stretch_to);
						draw_sprite_stretched(spr, 1, xpos, ypos, size[0], size[1]);

					#endregion
				}
				
				
			break;
			case("Kill"):
				var pic = ds_map_find_value(quest_data_map, "Picture");
				
				var right_border = 128;
				var picture_x = page_l + book_page_width * 0.8 - right_border;
				var picture_y = book_page_yoffset + y_margin * 3;
				
				draw_sprite(pic, 1, picture_x, picture_y);
				
			break;
			case("Potion"):
				draw_text(page_l + x_margin, page_up_y + lower_y, "Ingredient 1");
				draw_text(page_l + x_margin, page_up_y + lower_y + 80, "Ingredient 2");
				draw_text(page_l + x_margin, page_up_y + lower_y + 160, "Ingredient 3");
				
			break;
			case(-1): //default
				
			break;
		}
		
		if quest_data_keys[i] != "Type"  {
			//draw_text_ext(page_l + x_margin / 2, page_up_y + 100 * i + y_margin, ds_map_find_value(quest_data_map, quest_data_keys[i]), string_height(quest_map_name), book_page_width - right_border - x_margin * 2);
		}
		
		

	}
	
	scr_reset_text();
	
}