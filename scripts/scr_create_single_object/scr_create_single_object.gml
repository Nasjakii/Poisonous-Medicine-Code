function scr_create_single_object(obj){
	
	
	
	if !instance_exists(obj) {
		instance_create_depth(0,0,0,obj);

	} else {
		scr_error("Trying to create multiple objects: ", object_get_name(obj));
	}
}