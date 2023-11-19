
//Book
scr_create_single_object(objBook);

//Resize some stuff
gui_scale = gui_width / room_width;

//scale of the items on the desk
scale = 1;

//Desk positions and scale
desk_gui_x = x * gui_scale + 50;
desk_gui_y = y * gui_scale + 50;
desk_gui_w = sprite_width * gui_scale - 50;
desk_gui_h = sprite_height * gui_scale - 50;


#region Bottom bar
	bottom_gap = 12;
	top_gap = 10;
	side_gap = 24;

	itembox_size = 96;
	itembox_gap = 24;
	itembox_gap_between = 51;

	inventory_size = global.inventory_size;

	var i;
	for(i = 0; i < inventory_size; i++) {
		itembox_h[i] = 0;
	}
#endregion


#region items on desk

	//Array with all items from the Inventory
	inventory_local = scr_get_inventory();
	
	for(var i = 0; i < array_length(inventory_local[0]); i++) {
		global.item_holding[i] = -1;
	}


	for(var i = 0; i < inventory_size; i++) {
		desk_array[i,0] = -1; //item class
		desk_array[i,1] = 0; //xpos
		desk_array[i,2] = 0; //ypos
		desk_array[i,3] = -1 //instance id
	}
#endregion

