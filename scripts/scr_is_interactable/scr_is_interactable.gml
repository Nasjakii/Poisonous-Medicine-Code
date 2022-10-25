function scr_is_interactable(inst_id){
	return (ds_list_find_index(objGeneral.list_of_interactables, inst_id) != -1)
}