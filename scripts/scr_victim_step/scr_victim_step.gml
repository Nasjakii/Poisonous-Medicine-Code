function scr_victim_step(){
	
	//Interacting with victim
	if interact == true && item_interacted_with == -1 {
		//getting the item holding
		if global.item_holding != -1 {
			item_interacted_with = global.item_holding; 
			//end interaction
			interact = false;

		} else {
			//just talking -> draw GUI
			talking = true;
		}
	}
	

	
	
	if item_interacted_with != -1 || array_length(effect_array) != 0{
		//Set the Stats
		if array_length(effect_array) == 0 {
			//Stats of the item used
			scr_item_interact(item_interacted_with);
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