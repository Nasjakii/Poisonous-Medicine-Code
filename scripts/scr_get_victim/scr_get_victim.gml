function scr_get_victim(instance){
	return variable_instance_exists(instance.id, "item_interacted_with");
}