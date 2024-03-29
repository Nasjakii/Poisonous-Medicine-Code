


#region Item selection

if instance_exists(objKiller) {

	if keyboard_check(vk_tab) {
		
		draw_set_alpha(circle_alpha);
		draw_set_circle_precision(1000);
		draw_circle_color(circle_x, circle_y, item_circle_radius, c_black, c_dkgray, false);
		
		
		//Add Items from the Inventory that are interactable
		var selection_list = ds_list_create();
		var temp_inventory = scr_get_inventory();

		
		//No item
		ds_list_add(selection_list, sprHandItem);
		
		for(var i = 0; i < array_length(temp_inventory); i++) {	
			
			if temp_inventory[i] != -1 && temp_inventory[i].usable {
				//add sprite
				ds_list_add(selection_list, temp_inventory[i].sprite);
			}
		}
		
		#region Circle Hitbox
			#region bugged
				//Angle size of the circle parts
				var deg_mult = min(45, 360 / ds_list_size(selection_list));
		
				var i;
				for(i = 0; i < ds_list_size(selection_list); i++) {
					var xpos = circle_x + lengthdir_x(item_circle_radius * 1,  deg_mult * i);
					var ypos = circle_y + lengthdir_y(item_circle_radius * 1,  deg_mult * i);
					var xpos1 = circle_x +  lengthdir_x(item_circle_radius * 1, deg_mult * (i - 1));
					var ypos1 = circle_y + lengthdir_y(item_circle_radius * 1, deg_mult * (i - 1));
			
					triangle_hitbox[i] = point_in_triangle(mouse_x_gui, mouse_y_gui, circle_x, circle_y, xpos, ypos, xpos1, ypos1);
			
					//darken the hovered area
					if triangle_hitbox[i] {
						draw_set_color(c_black);
						draw_set_alpha(0.2);
						draw_triangle(circle_x, circle_y, xpos, ypos, xpos1, ypos1, false);
						draw_set_alpha(1);
						
						item_hovered = ds_list_find_value(selection_list, i);
					}
			#endregion		
		#endregion
		
				#region Draw the items in the circle
					var spr = ds_list_find_value(selection_list, i);
					var spr_w = sprite_get_width(spr);
					var spr_h = sprite_get_height(spr);
					var length = item_circle_radius / 1.5  ;
					var dir = deg_mult * (i - 0.5);
					var stretch_to = 64;
			
					if ds_list_size(selection_list) > 0 {		
						//All the same size
						var size = scr_relative_size(spr_w, spr_h, stretch_to);
						draw_sprite_stretched(spr, 1, circle_x + lengthdir_x(length,dir), 
													  circle_y + lengthdir_y(length,dir) - sprite_get_height(spr) / 2, size[0], size[1]);
					}
				#endregion
		
		}
		
		draw_set_alpha(1);
		
	}
	
	
//Select Item    TODO rework when not hovered anymore remove item_hovered
if (mouse_check_button_released(mb_left) && keyboard_check(vk_tab)) || keyboard_check_released(vk_tab) {
	if item_hovered == sprHandItem {
		global.item_holding = -1;
	} else {
		global.item_holding = item_hovered;
	}

}
	
	
}

#endregion


//Icon in the top-left corner
draw_sprite(sprBookIcon, sprBookIcon_subimg, 0,0);
if scr_in_bounds(mouse_x_gui, mouse_y_gui, 0,0,sprite_get_width(sprBookIcon), sprite_get_height(sprBookIcon)) 
	&& l_released {
	global.show_book = !global.show_book;
}

#region show Message 
	

	if show_gui_message {
		gui_message_timer += 0.04;
		scr_show_message_gui(gui_message_timer);
		if gui_message_timer > 2 * pi {
			show_gui_message = false;
		}
	} else {
		gui_message_timer = 0;
	}
	
#endregion









