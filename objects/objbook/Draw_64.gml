#region Book

if global.show_book == true {
	#region general
	
	//Background of Book
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0, gui_width, gui_height, false);
	draw_set_alpha(1);

	//Draw Book
	draw_sprite(sprBook, book_subimage, book_xpos, book_ypos);
	
	#endregion

	#region Hitboxes of banners
	var i;
	for(i = 0; i < array_length(book_tab_hitbox); i++) {
		
		book_tab_hitbox[i] = point_in_rectangle(mouse_x_gui, mouse_y_gui, banner_x[i], banner_y[i], banner_x[i] + banner_width, banner_y[i] + banner_height);
		//draw the hitboxes
		/*
		draw_set_color(c_red);
		draw_rectangle( banner_x[i], banner_y[i], banner_x[i] + banner_width, banner_y[i] + banner_height, true);
		draw_set_color(c_white);
		*/
		
		//Swap to page
		//TODO maybe better solution performance wise
		if (book_tab_hitbox[i] && l_click) || book_subimage == i {
			book_subimage = i;
		
			#region swap hitboxes
			//All from 0 to i come left
			for(var i2 = 0; i2 < i; i2++) {
				banner_x[i2] = banner_left_x;
			}
			
			//All others get right
			for(var i2 = i; i2 < array_length(book_tab_hitbox); i2++) {
				banner_x[i2] = banner_right_x;
			}
				
				
			#endregion
		}
	}

	#endregion

	
	#region Chapters

		switch(book_subimage) {
			case(1):
			
				#region Inventory
				
				//Itemboxes
				var i; 
				for(i = 0; i < array_length(book_itembox_y); i++) {
					
					var fit_one_page = 10;

							//How many fit on one page
					if i < fit_one_page {
						draw_sprite(sprItembox, i, book_itembox_x, book_itembox_y[i]);
						
						//Draw the items in the boxes
						if inventory_items_arr[i,0] != -1 {

						
							var spr = object_get_sprite(inventory_items_arr[i,1]);
						
							var stretch_to = 48;
							var spr_w = sprite_get_width(spr);
							var spr_h = sprite_get_height(spr);
							//Fitting size in the box
							var size = scr_relative_size(spr_w, spr_h, stretch_to);
						

							draw_sprite_stretched(spr, 1, book_itembox_x + spr_w / 2, 
														  book_itembox_y[i] + spr_h / 2, size[0], size[1]);

						}
					} else {
						draw_sprite(sprItembox, i, book_itembox_x + book_page_width, book_itembox_y[i - fit_one_page]);
						
						//Draw the items in the boxes
						if inventory_items_arr[i,0] != -1 {

						
							var spr = object_get_sprite(inventory_items_arr[i,1]);
						
							var stretch_to = 48;
							var spr_w = sprite_get_width(spr);
							var spr_h = sprite_get_height(spr);
							//Fitting size in the box
							var size = scr_relative_size(spr_w, spr_h, stretch_to);
						

							draw_sprite_stretched(spr, 1, book_itembox_x + book_page_width + spr_w / 2, 
														  book_itembox_y[i - fit_one_page] + spr_h / 2, size[0], size[1]);

						}
					}
					
				}
				#endregion
			
			break;
			case(3):
			
				#region Quests
					//you are up to date with the quests
					objGuiController.sprBookIcon_subimg = 0;
					
					draw_set_color(c_white);
					//hitbox that leads to new quest page
					draw_triangle(triangle_right_x[0], triangle_right_y[0],
								  triangle_right_x[1], triangle_right_y[1],
								  triangle_right_x[2], triangle_right_y[2], false);
					
					var hitbox_next_page = point_in_triangle(mouse_x_gui, mouse_y_gui,triangle_right_x[0],triangle_right_y[0], triangle_right_x[1], triangle_right_y[1], triangle_right_x[2], triangle_right_y[2]);
					if hitbox_next_page && mouse_check_button_released(mb_left) && quest_page < ds_list_size(active_quests) / 2 - 1 {
						quest_page++;
					}
					
					draw_triangle(triangle_left_x[0], triangle_left_y[0],
								  triangle_left_x[1], triangle_left_y[1],
								  triangle_left_x[2], triangle_left_y[2], false);
					
					
					var hitbox_before_page = point_in_triangle(mouse_x_gui, mouse_y_gui,triangle_left_x[0],triangle_left_y[0], triangle_left_x[1], triangle_left_y[1], triangle_left_x[2], triangle_left_y[2]);
					if hitbox_before_page && mouse_check_button_released(mb_left) && quest_page > 0 {
						quest_page--;
					}
					
					//Reload active quests
					active_quests = scr_quest_get_all_active();
					
					
					
					//draw Quest
					var pos = "left";
					for(var i = 0; i < ds_list_size(active_quests); i++) {
						if (i mod 2 == 0) {
							pos = "left";
						} else {
							pos = "right";
						}
						
						if quest_page * 2 == i || quest_page * 2 + 1 == i {
							scr_draw_quest_page(ds_list_find_value(active_quests,i), pos);
						}
					}
					
					
					
				
				
				#endregion
				
			break;
			case(5):
			
				#region Settings
					
					draw_set_color(c_white);
					var xpos = page_right_x2;
					var ypos = book_page_yoffset+book_page_height;
				
					//draw_triangle(xpos - 70, ypos - 95, xpos + 15, ypos - 95, xpos - 70,ypos, true);
					var hitbox = point_in_triangle(mouse_x_gui, mouse_y_gui, xpos - 70, ypos - 95, xpos + 15, ypos - 95, xpos - 70,ypos);
					if hitbox && mouse_check_button_released(mb_left) {
						room_goto(Menu);
					}
				
				#endregion
			break;
			
		}
	
	#endregion
	
	
	
	
	} 
#endregion
