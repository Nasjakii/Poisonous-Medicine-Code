function scr_get_current_view(){
	
	var arr = scr_get_view_array();
	
	for(var i = 0; i < array_length(arr); i++) {
		if scrInBounds(objKiller.y, objKiller.y, arr[i].bbox_left, arr[i].bbox_top, arr[i].bbox_right, arr[i].bbox_bottom) {
			//returns the id of the current view
			return arr[i];	
		}
	}
}