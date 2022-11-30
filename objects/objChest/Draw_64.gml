
if interact {
	
	
	
	#region Show Chest Slots
		for(var i = 1; i <= chest_slots; i++) {
		
			var xpos = gui_width / 2 - chest_slots / 2 * slot_size;
			var ypos = 200;
			if i > 5 {
				xpos -= (chest_slots / 2 * slot_size);
				ypos += slot_size;
			}
		
		
			draw_set_color(c_white);
			draw_set_alpha(0.7);
			draw_rectangle(xpos + i * slot_size, ypos,
						   xpos + (i+1) * slot_size, ypos + slot_size, false);
					   
			//var size = scr_relative_size(spr_w, spr_h, stretch_to);
			//draw_sprite_stretched(spr,1,xpos + i * slot_size, ypos, size[0], size[1]);
													 

		}
	#endregion
	
	#region Show Inventory
		var inv_arr = scr_get_inventory();
		for(var i = 0; i < global.inventory_size; i++) {
			
			var xpos = gui_width / 2 - chest_slots / 2 * slot_size;
			var ypos = 600;
			if i > global.inventory_size / 2 -1 {
				xpos -= (global.inventory_size / 2 * slot_size);
				ypos += slot_size;
			}
			
			
			draw_set_color(c_white);
			draw_set_alpha(0.7);
			draw_rectangle(xpos + i * slot_size, ypos,
						   xpos + (i+1) * slot_size, ypos + slot_size, false);
			draw_set_alpha(1);
			

			var spr = inv_arr[i,0];
			if spr != -1 {
				var spr_w = sprite_get_width(spr);
				var spr_h = sprite_get_height(spr);
			
				var size = scr_relative_size(spr_w, spr_h, slot_size);
			
				draw_sprite_stretched(spr,1,xpos + i * slot_size, ypos, size[0], size[1]);
			}
		}
	
	
	#endregion
	
	if keyboard_check_released(vk_space) {
		interact = false;
	}
	
	
}