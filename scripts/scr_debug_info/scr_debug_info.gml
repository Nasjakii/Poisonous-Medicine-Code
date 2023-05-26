
function scr_debug_info(type, set_to){
	
	//make sure its a string
	set_to = string(set_to);
	
	var position = 0;
	var str = "";
	
	switch(type) {
		case("Daytime"):
				
		break;
		case("Rain"):
			
		break;
		case("State"):
			position = 3;
			str += "State: " + set_to;
		break;
		case("Darkness"):
			position = 4;
			str += "Darkness: " + set_to;
		break;
		case("Event Index"):
			position = 5;
			str += "Event Index: " + set_to;
		break;
		case("Progress"):
			str += "Progress: " + set_to;
		break;
		default:
			position = 6;
			str += string(set_to);
		break;
	}
	
	ds_list_set(objGeneral.debug_list, position, str);
}