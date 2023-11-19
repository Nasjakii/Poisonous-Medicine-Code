
function scr_create_object(collectable, interactable){
	if collectable == true {
		ds_list_add(objGeneral.list_of_collectables, id);
	}
	if interactable == true {
		ds_list_add(objGeneral.list_of_interactables, id);
		interact = false;
		
	}
	
	
	
}