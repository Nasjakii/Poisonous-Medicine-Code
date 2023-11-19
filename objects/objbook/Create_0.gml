global.show_book = false;

#region Item Manager
	
	
	
	scr_initialize_inventory();
	
	scr_delete_item_from_inventory("Lamp");
	//scr_add_item_to_invetory("Lamp");
	
		
	scr_create_potion("Potion Test", c_red, "");
	//scr_add_item_to_invetory("Potion Test");

	
	scr_safe_inventory();
	

	
#endregion


#region Book Positions and Dimensions
	
	gui_scale = 1;


	#region Book sizes
	
	book_width = sprite_get_width(sprBook);
	book_height = sprite_get_height(sprBook);
	
	book_xpos = gui_width / 2;
	book_ypos = gui_height / 2;
	
	book_page_width = 575;
	book_page_height = 879;
	book_middle_stripe_width = 21;
	
	book_pages_width = book_page_width * 2 + book_middle_stripe_width;
	
	book_page_xoffset = 120;
	book_page_yoffset = 69;
	
	book_edge_x1 = book_xpos - book_middle_stripe_width / 2 - book_page_width - book_page_xoffset;
	book_edge_x2 = book_edge_x1 + book_width;
	
	#endregion
	
	
	#region banner dimensions
	
	page_to_banner_y = 43;
	banner_gap = 27;
	
	banner_width = 187;
	banner_height = 70;
	
	banner_left_x = book_edge_x1;
	banner_right_x = book_edge_x2 - banner_width;
	
	
	var i; 
	for(i = 0; i < 6; i++) {
		book_tab_hitbox[i] = 0;
		banner_x[i] = banner_right_x;
		banner_y[i] = book_page_yoffset + page_to_banner_y + i * (banner_gap + banner_height);
	}
	
	#endregion
	
	#region Page sizes 
	book_subimage = 0; //Starting page
	
	page_left_x = book_edge_x1 + book_page_xoffset; //Left page left x
	page_right_x = page_left_x + book_page_width + book_middle_stripe_width;  //Right page Left x
	page_right_x2 = page_right_x + book_page_width; //Right page right x
	
	page_up_y = book_page_yoffset; //Page upper y
	page_down_y = page_up_y + book_page_height;
	
	#endregion
	
	#region triangle positions / next page, page before
		
		//dimensions of the triangles
		var triangle_width = 100;
		var triangle_height = 100;
	
		//ordered in reading direction (left -> right, up -> down)
		triangle_left_x[0] = page_left_x;
		triangle_left_x[1] = page_left_x + triangle_width;
		triangle_left_x[2] = page_left_x + triangle_width;
		
		triangle_left_y[0] = page_down_y - triangle_height;
		triangle_left_y[1] = page_down_y - triangle_height;
		triangle_left_y[2] = page_down_y;
		
		triangle_right_x[0] = page_right_x2 - triangle_width;
		triangle_right_x[1] = page_right_x2;
		triangle_right_x[2] = page_right_x2 - triangle_width;
		
		triangle_right_y[0] = page_down_y - triangle_height;
		triangle_right_y[1] = page_down_y - triangle_height;
		triangle_right_y[2] = page_down_y;
	
	#endregion
	

	
#endregion

#region pages

	quest_page = 0;

	#region Inventory Chapter
	
	var itembox_gap = 20;
	var itembox_size = sprite_get_width(sprItembox);
	var itembox_yoffset = 32;
	
	book_itembox_x = page_left_x + itembox_size;	
	
	var i;
	for(i = 0; i < array_length(inventory); i++) {
		book_itembox_y[i] = book_page_yoffset + (itembox_size + itembox_gap) * i + itembox_yoffset;	
	}
	#endregion
	
	#region Quest Chapter
	
	

	
	#endregion
	
	#region recipe
		recipe_map = ds_map_create();
		
		var spr_list = ds_list_create();
		ds_list_add(spr_list, sprPoppy, sprSyringe, sprPoppy, sprKey);
		scr_add_recipe("Test", spr_list);
		
	#endregion

#endregion

