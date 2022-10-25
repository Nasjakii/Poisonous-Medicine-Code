//gui step begin becaus of book needs to be drawn over the rest


#region Item background

var x1 = (bbox_left + side_gap)* gui_scale;
var x2 = (bbox_right - side_gap) * gui_scale;
var y1 = (bbox_bottom + top_gap)* gui_scale;
var y2 = (room_height - bottom_gap) * gui_scale;

draw_set_color(c_dkgray);
draw_set_alpha(0.2);
draw_rectangle(x1,y1,x2,y2, false);
draw_set_alpha(1);
draw_set_color(c_white);

#endregion

#region Draw Itemboxes and implement the Hitboxes


for(var i = 0; i < inventory_size / 2; i++) {
	
	#region item row1 Draw Hitboxes and items
	
	//Draw Rectangle for Itemboxes
	var itembox_x1 = x1 + i * (itembox_size + itembox_gap_between) + itembox_gap;
	var itembox_y1 = y1 + itembox_gap;
	draw_rectangle(itembox_x1, itembox_y1, itembox_x1 + itembox_size, itembox_y1 + itembox_size, true);
	
	if inventory_array_local[i,0] != -1 {
		//Draw sprite at right size
		var spr_item = inventory_array_local[i,0];
		var size = scr_relative_size(sprite_get_width(spr_item), sprite_get_height(spr_item), itembox_size);
		draw_sprite_stretched(spr_item, 1, itembox_x1, itembox_y1, size[0], size[1]);
	}
	
	//Hitbox
	itembox_h[i] = point_in_rectangle(mouse_x_gui, mouse_y_gui, itembox_x1, itembox_y1, itembox_x1 + itembox_size, itembox_y1 + itembox_size);
	
	
	#endregion
	
	#region item row2 Draw Hitboxes and items
	
	//Draw Rectangle for Itemboxes
	var itembox_x2 = itembox_x1;
	var itembox_y2 = itembox_y1 + itembox_size + itembox_gap;
	draw_rectangle(itembox_x2, itembox_y2, itembox_x2 + itembox_size, itembox_y2 + itembox_size, true);
	
	if inventory_array_local[i+inventory_size / 2,0] != -1 {
		//Draw sprite at right size
	 	var spr_item = inventory_array_local[i + inventory_size / 2, 0];
		var size = scr_relative_size(sprite_get_width(spr_item), sprite_get_height(spr_item), itembox_size);
		draw_sprite_stretched(spr_item, 1, itembox_x1, itembox_y2, size[0], size[1]);
	}
	
	//Hitbox
	itembox_h[i + inventory_size / 2] = point_in_rectangle(mouse_x_gui, mouse_y_gui, itembox_x2, itembox_y2, itembox_x2 + itembox_size, itembox_y2 + itembox_size);
	
	#endregion
	
	
}
#endregion

#region Pick up

	#region Pick item up from slots
	if mouse_check_button_pressed(mb_left) {
		var i;
		for(i = 0; i < inventory_size; i++) {
			if itembox_h[i] && inventory_array_local[i,0] != -1{
				//hold the item array
				item_holding = scr_array_get_out(item_holding, inventory_array_local, i);
				//delete item from local array
				inventory_array_local[i,0] = -1;
				inventory_array_local[i,1] = -1;
				for(var i2 = 2; i2 < 6; i2++) {
					inventory_array_local[i,i2] = 0;
				}
				
				break;
			}
		}
	}
	
	#endregion
	
	#region Pick item up from desk 
	
		if mouse_check_button_pressed(mb_left) {
			for(var i = 0; i < array_length(desk_array); i++) {
				if desk_array[i,0] != -1 {
					
					var xpos = desk_array[i,0].bbox_left;
					var ypos = desk_array[i,0].bbox_top;
					var xpos2 = desk_array[i,0].bbox_right;
					var ypos2 = desk_array[i,0].bbox_bottom;
			
					if scrInBounds(mouse_x,mouse_y,xpos,ypos,xpos2,ypos2) {
						//Transfer attributes from object to array holding
						item_holding = scr_list_to_array(desk_array[i,0].ds_list_values);
						//Destroy object from table
						instance_destroy(desk_array[i,0]);
						//Reset Variables
						desk_array[i,0] = -1;
						desk_array[i,1] = 0;
						desk_array[i,2] = 0;
						
						break;
					}
				}
				
			}
			
		}
	
	#endregion

#endregion

#region Place down

if mouse_check_button_released(mb_left) {
	

	#region place object in desk array 
	//over desk ?
	if item_holding[0] != -1 && scrInBounds(mouse_x_gui, mouse_y_gui, desk_gui_x, desk_gui_y, desk_gui_x + desk_gui_w, desk_gui_y + desk_gui_h) {
		for(var i = 0; i < array_length(desk_array); i++) {
			//free slot
			if desk_array[i,0] == -1 {
				
				//Create instance with all atributes 
				desk_array[i,0] = scr_create_crafting_instance(item_holding[0], mouse_x, mouse_y, scale, item_holding);	
				desk_array[i,1] = mouse_x - desk_array[i,0].sprite_xoffset;
				desk_array[i,2] = mouse_y - desk_array[i,0].sprite_yoffset;
		
				//Reset the item_holding array
				item_holding = scr_array_set_all(item_holding,-1);
				
				//Is on a different item ?
				var inst = desk_array[i,0];						//Not checking for itself
				for(var i2 = 0; i2 < array_length(desk_array) && i2 != i; i2++) {
					var inst2 = desk_array[i2,0];
					//On other item ?
					if scrInBounds(inst.x, inst.y, inst2.bbox_left,inst2.bbox_top,inst2.bbox_right,inst.bbox_bottom) {
						//Can be combined ?
						var combination = scr_items_combine(inst,inst2);
						//TODO glitching out
						if combination == false {
							inst.x = inst.x - 20;
							inst2.x = inst2.x + 20;
						}
						break;
					}
				}
				
				
				break;
			}
		}
	}	
	#endregion
	
	#region over slots
	
		for(var i = 0; i < inventory_size; i++) {
			if itembox_h[i] && item_holding[0] != -1 && inventory_array_local[i,0] == -1 {
				//Place item in local inventory
				inventory_array_local = scr_array_set_in(inventory_array_local, i, item_holding);
				//Reset item holding
				item_holding = scr_array_set_all(item_holding,-1);
				break;
			}
		}
	
	#endregion
	
	
}

#endregion

#region draw at gui

//Draw the holding item at cursor
if item_holding[0] != -1 {
	var spr = item_holding[0];
	var spr_w = sprite_get_width(spr);
	var spr_h = sprite_get_height(spr);
	var rescale = 4;
	draw_sprite_stretched(spr, 1, mouse_x_gui - (spr_w / 2) * rescale, 
								  mouse_y_gui - (spr_h / 2) * rescale, spr_w * rescale, spr_h * rescale);
}


#endregion
