
#region create queue
	//reorganize								//initialize
	if global.event_index != saved_index || saved_index == 0 {

		ds_list_clear(queue_list);
		
		saved_index = global.event_index; //set to newest
	
		//recreate queue list
		for(var i = 0; i < array_length(npc); i++) {
			var occ_index = npc[i,1];
			var done = npc[i,3];
			
			if occ_index <= global.event_index && !done {
				ds_list_add(queue_list, i);
			}
		}
	
		
	}
#endregion

#region create npcs

if npc_count < ds_list_size(queue_list) {
	for(var i = 0; i < ds_list_size(queue_list); i++) {
		
		var npc_pos = ds_list_find_value(queue_list, i); //in what spot to find the npc data

		var inst = npc[npc_pos,0]; //npc id
		
		if !instance_exists(inst) {
			//walk in?
			if npc[npc_pos, 2] { 
				var inst = instance_create_layer(npc_xpos[npc_count], npc_ypos[npc_count], creation_layer, npc[npc_pos, 0]);

			} else {
				var npc_inst = instance_create_layer(0, 0, creation_layer, npc[npc_pos, 0]);
				
				var o = objPharmacyController;
				with(npc_inst) {
											//later adjustable, customizable  per npc
					path_start(o.paths[o.npc_count], o.npc_speed, path_action_stop, true);
				}
				npc[npc_pos, 2] = true; //walked in

			}
			npc_count++;
		}
	}
}

#endregion


