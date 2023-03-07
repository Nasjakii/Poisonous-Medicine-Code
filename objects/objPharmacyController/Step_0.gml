
#region create queue

	//reorganize								//initialize
	if global.event_index != saved_index || saved_index == 0 {
		saved_index = global.event_index; //set to newest
		
		//recreate queue list
		scr_pharmacy_queue_create(npc);
		
	}
#endregion


#region create npcs

var npc_count = scr_get_npc_count(); //The count of npcs that should be in the room atm
var npcs_exist = scr_get_npc_exist_count(); //The count of npcs that are in the room

if npcs_exist < npc_count { //Npcs needs to be created
	
	//look for the missing npc
	for(var i = 0; i < npc_count; i++) {
		var npc_pos = ds_list_find_value(queue_list, i); //in what spot to find the npc data
		var inst = npc[npc_pos,0]; //npc id
		var exists = instance_exists(inst);


		if !exists { 
			
			#region create npc
			
				//already walked in?
				if npc[npc_pos, 2] { 
					var path = paths[i];
					var last_path_i = path_get_number(path) - 1;
					var xpos = path_get_point_x(path,last_path_i);
					var ypos = path_get_point_y(path,last_path_i);
					
					var inst = instance_create_layer(xpos, ypos, creation_layer, npc[npc_pos, 0]);

				} else {
					var npc_inst = instance_create_layer(0, 0, creation_layer, npc[npc_pos, 0]);
				
					with(npc_inst) {
						var o = objPharmacyController;
						var queue_pos = i; //which position in the line
					
						#region path movement
						
							var path = o.paths[queue_pos];
							var new_path = path_duplicate(path);
							var spr_adjust = 128 - sprite_height;
							
							//Rewrite the whole path to a new one
							for(var i = 0; i < path_get_number(path); i++) {
								path_change_point(new_path, i, path_get_point_x(path,i), path_get_point_y(path,i) + spr_adjust, 100);
							}
													//later adjustable, customizable  per npc
							path_start(new_path, o.npc_speed, path_action_stop, true);
						#endregion
					
					}
					npc[npc_pos, 2] = true; //walked in


				}
			#endregion

		}
	}
}

#endregion



#region end quest

	for(var i = 0; i < npc_count; i++) {
	
		var npc_pos = ds_list_find_value(queue_list, i); //in what spot to find the npc data
		var inst = npc[npc_pos,0]; //npc id
		var npc_completed = npc[npc_pos, 3];

		//exit if quest done
		if npc_completed {
			with(inst) {
				
				var exit_path = path_add();
				path_add_point(exit_path, x,y,20);
				path_append(exit_path, path_npc_pharmacy_exit);
				path_set_closed(exit_path, false);
				path_start(exit_path, 1, path_action_stop, true);		
				
			}
			//delete npc from queue
			ds_list_delete(queue_list, i);
		}
	}

#endregion

#region leave room after finished
	for(var i = 0; i < array_length(npc); i++) { //go through all npcs
		var inst = npc[i,0];
		var exists = instance_exists(inst);
		var completed = npc[i,3];
		
		if completed && exists {
			var path_finished = inst.path_position == 1;
			if path_finished instance_destroy(inst);
		}
	}
#endregion

