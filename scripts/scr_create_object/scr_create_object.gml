
function scr_create_object(collectable, interactable, outline = 1){
	if collectable == true {
		ds_list_add(objGeneral.list_of_collectables, id);
		
	}
	if interactable == true {
		ds_list_add(objGeneral.list_of_interactables, id);
		interact = false;
		
	}
	
	if outline == 1 {
		scr_create_inline();
	} else if outline == 2 {
		scr_create_outline();
	} else {
		scr_error("Outline shadow option not available:", outline);
	}
	
	
}