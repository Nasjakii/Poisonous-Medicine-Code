

#region Collectables

var i;
for(i = 0; i < ds_list_size(objGeneral.list_of_collectables); i++) {

	var inst = ds_list_find_value(objGeneral.list_of_collectables, i);
	
	//Object exists && character in Range 
	if instance_exists(inst) && scr_in_range(inst) && !global.show_book {
	   
	   with(inst) {
			scr_draw_inline();
		}
	   //mouse over && l_click
	   if scr_in_bounds(mouse_x, mouse_y, inst.bbox_left, inst.bbox_top, inst.bbox_right, inst.bbox_bottom) && l_click {
			
			var interactable = scr_is_interactable(inst.id);

			scr_add_item(object_get_sprite(inst.object_index), inst.object_index, interactable, 1, 1);
			
			with(inst) {
				instance_destroy(self);
			}
	   }
	   break;
	} else {
		with(inst) {
			draw_self();
		}
	}
}

#endregion


#region Interactables

//go through all interactables
var highest_inst = 0;

for(var i = 0; i < ds_list_size(objGeneral.list_of_interactables); i++) {
	
	var inst = ds_list_find_value(objGeneral.list_of_interactables, i);

	//instance exists && character in Range 
	if instance_exists(inst) && scr_in_range(inst) && !global.show_book {
		
		//draw inline
		with(inst) {
			draw_outline = true;
		}
		if variable_instance_exists(inst, "item_interacted_with") {
			inst.item_interacted_with = item_holding;
		}
		
	   //all instances that are clicked are compared
	   if scr_in_bounds(mouse_x, mouse_y, inst.bbox_left, inst.bbox_top, inst.bbox_right, inst.bbox_bottom) && l_click {
			
			if highest_inst == 0 || highest_inst.depth > inst.depth highest_inst = inst;

	   }
	} 
}

//only click the highest inst
if highest_inst != 0 {
	//doesnt want to talk and is a victim
	if item_holding != -1 && scr_get_victim(inst) {
		using_item_kind = scr_animation_using(item_holding);
		state = state_using;
	}
	
	//interact
	dialog = scr_subject_talking(inst);
	
	with(highest_inst) {
		interact = true;
	}
	highest_inst = 0;
}

#endregion



draw_self();


#region draw items holding


	//if holding an item
	if item_holding != -1 {
		
		//bad solution
		//draw_sprite(item_holding, 1, x,y);
		
		//get the list of all slot sprites
		slot_list = ds_list_create();
		skeleton_slot_list(sprKillerBlankAnim, slot_list);
			
		//Set to potion

		//Fluid + Color
		skeleton_attachment_set("PotionWrist", "Extensions/sprPotionFluid");
		skeleton_slot_color_set("Extensions/PotionWrist", c_black, 1);
		//Potion Flask
		skeleton_attachment_set("Extensions/ItemWrist", "Extensions/sprPotion1");

		
	} else {
		
		skeleton_attachment_set("Extensions/ItemWrist", "Extensions/sprUnsetItem");
		//skeleton_slot_color_set("Extensions/sprUnsetItem", c_white, 1);
	}
	
	
	
	


#endregion














