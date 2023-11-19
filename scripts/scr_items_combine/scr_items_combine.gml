
function scr_items_combine(item1,item2){
						//getting the sprites from objCraftingInstance to differ items
	var combination_str = item1.name + " " + item2.name


	switch(combination_str) {
		//TODO add combinations of items
		//Items should move frome each other after combination or unsuccessful combination try
		case(""):
		
		break;
		default:
			scr_error("No comination found for: ", combination_str);
			return false;
		break;
	}
	
}