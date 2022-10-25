
function scr_draw_quest_page(quest_map_name, side){
	var quest_data_map = scr_quest_map(quest_map_name);
	
	
	
	var x_margin = 60;
	var y_margin = 30;
	
	if side == "left" {
		xpos = page_left_x;
	} else {
		xpos = page_right_x;
	}
	
	draw_set_font(foCustom);
	draw_set_color(c_black);
	
	//Titel
	draw_text_ext(xpos + x_margin / 2, page_up_y + y_margin, quest_map_name, string_height(quest_map_name), book_page_width - x_margin);
	
	
	var quest_data_keys = ds_map_keys_to_array(quest_data_map);
	
	var type = ds_map_find_value(quest_data_map, "Type");
	var quest_picture = ds_map_find_value(quest_data_map, "Picture");
	
	//if no type is defined set it to type "Default"
	if type == -1 type = "Default";
	
	for(var i = 0 ; i < array_length(quest_data_keys); i++) {
		
		var right_border = 0;
		var picture_x = 0;
		var picture_y = 0;
		
		switch(type) {
			case("Collect"):
				
			break;
			case("Kill"):
				right_border = 128;
				picture_x = book_edge_x1 + book_page_width - right_border;
				picture_y = book_page_yoffset + y_margin * 3;
				
				draw_sprite(quest_picture, 1, picture_x, picture_y);
				
			break;
			case("Default"):
				//
			break;
		}
		
		
		
		//Dont show Type
		if quest_data_keys[i] != "Type"  {
			draw_text_ext(xpos + x_margin / 2, page_up_y + 100 * i + y_margin, ds_map_find_value(quest_data_map, quest_data_keys[i]), string_height(quest_map_name), book_page_width - right_border - x_margin * 2);
		}

	}
	
	scr_reset_text();
	
}