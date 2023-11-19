function scr_create_single_object(obj){
	
	
	
	if !instance_exists(obj) {
		var inst = instance_create_depth(0,0,0,obj);
		return inst;

	} else {
		return false;
	}
}