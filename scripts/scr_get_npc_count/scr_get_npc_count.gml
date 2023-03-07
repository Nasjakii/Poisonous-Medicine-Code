//Shows how many npcs should be there at the moment
//excluding the ones that are leaving

function scr_get_npc_count(){
	var npc_arr = objPharmacyController.npc;
	
	var count = 0;
	for(var i = 0; i < array_length(npc_arr); i++) {
		var occ_index = npc_arr[i,1];
		var completed = npc_arr[i,3];
		
		 //if occ index <= global index and not completed yet
		if occ_index <= global.event_index && completed == false {
			count++; 
		} 
	}
	
	return count;
}