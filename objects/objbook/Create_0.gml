global.show_book = false;

#region Item Manager
	
	#region manage
		//inventory_items_arr[i,spr];
		
		//Data
		inventory_name_arr[0] = "Sprite";
		inventory_name_arr[1] = "Object";
		inventory_name_arr[2] = "Interactable";
		inventory_name_arr[3] = "Collectable";
		inventory_name_arr[4] = "Count";
		//Effects
		inventory_name_arr[5] = "Poison_Level";
		
		
	
		//scr_add_item argumente müssen bei neuen Items angepasst werden
	
	#endregion
	
	//Initialize Inventory
	for(var i = 0; i < global.inventory_size; i++) {
		scr_item_reset(i);
	}
	

	scr_load_inventory();
	
	scr_clear_inventory();
	
	
	scr_add_item(sprKey,objKey,1,1,1);
	scr_add_item(sprSyringe, objSyringe, 1,1,1);
	scr_add_item(sprTartaremetic, objTartaremetic, 0, 1, 1);
	scr_add_item(sprPotion1, objPotion1, 1, 0, 1, 0.1);
	
	scr_add_item(sprHandlamp, objHandlamp, 1,0);


	
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
	
	#endregion
	

	
#endregion

#region pages

	#region Inventory Chapter
	
	var itembox_gap = 20;
	var itembox_size = sprite_get_width(sprItembox);
	var itembox_yoffset = 32;
	
	book_itembox_x = page_left_x + itembox_size;	
	
	var i;
	for(i = 0; i < array_length(inventory_items_arr); i++) {
		book_itembox_y[i] = book_page_yoffset + (itembox_size + itembox_gap) * i + itembox_yoffset;	
	}
	#endregion
	
	#region Quest Chapter
	
	//Delete later
	scr_quest_set_state("Kill Bartholomew", 0);

	quest_page = 0;
	active_quests = scr_quest_get_all_active();
	
	
	
	
	
	
	#endregion

#endregion

