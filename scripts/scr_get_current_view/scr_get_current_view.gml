function scr_get_current_view(){
	
	var arr = scr_get_view_array();
	
	for(var i = 0; i < array_length(arr); i++) {

		if scr_in_bounds_object(objKiller.x, objKiller.y, arr[i]) {
			//returns the id of the current view
			debug objKiller.x) + " < " + string(arr[i].bbox_right));
			return arr[i];	
		}
	}
}