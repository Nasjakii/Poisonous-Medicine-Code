function scr_victim_step(){
	
	//Interacting with victim
	if interact == true && item_interacted_with == -1 {
		//getting the item holding
		if objKiller.item_holding != -1 {
			var spr_item = objKiller.item_holding;
			var item_index = scr_get_item_index(-1, spr_item);
			//Used item
			if item_index != -1 {
				//give array of item
				item_interacted_with = scr_get_item(item_index); 
				//end interaction
				interact = false;
				//set effect array to null so it can be re-defined
				effect_array = [];	
			}
		} else {
			//just talking -> draw GUI
			talking = true;
		}
	}
	

	
	
	if item_interacted_with != -1 || array_length(effect_array) != 0{
		//Set the Stats
		if array_length(effect_array) == 0 {
			//Stats of the item used
			effect_array = scr_item_interact(item_interacted_with);
			item_interacted_with = -1; //reset for talking and other items to be used
		} 

		//lose hp by stat
		hp -= effect_array[0];
		//other stats like sleep, dizzy etc TODO
		
	}
	

	if hp <= 0 {
		state = state_dead;
	}

}