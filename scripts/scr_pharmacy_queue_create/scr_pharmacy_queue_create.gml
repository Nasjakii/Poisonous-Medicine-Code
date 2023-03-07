//Used to initialize or recreate the queue

function scr_pharmacy_queue_create(npc_arr){
	ds_list_clear(queue_list); // Make sure the list is empty
	
	for(var i = 0; i < array_length(npc_arr); i++) { //go through every npc
			
		var occ_index = npc_arr[i,1];						//When does the npc occure
		var still_exists = instance_exists(npc_arr[i,0]);	//Is the npc still in the room
		var done = npc_arr[i,3];							//Is the quest completed 
			
		if (occ_index <= global.event_index && !done) || still_exists { //Should a npc be added or is still there
			
			ds_list_add(queue_list, i); //add them to queue
		}
	}
}