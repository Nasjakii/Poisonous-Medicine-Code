function scr_in_range(obj){
	if instance_exists(obj) {
		return distance_to_point((obj.bbox_left + obj.bbox_right) / 2, (obj.bbox_bottom + obj.bbox_top) / 2) < global.interactable_show_distance;
	} else {
		scr_error("Instance does not exists", obj);
	}
	
}