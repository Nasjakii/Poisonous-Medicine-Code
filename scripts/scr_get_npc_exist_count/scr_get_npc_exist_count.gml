function scr_get_npc_exist_count(){
	var npc_arr = objPharmacyController.npc;
	var count = 0;
	for(var i = 0; i < array_length(npc_arr); i++) {
		if instance_exists(npc_arr[i,0]) count++;
	}
	return count;
}