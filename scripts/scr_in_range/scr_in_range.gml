function scr_in_range(obj){
	if instance_exists(obj) {
		return distance_to_point(obj.x + obj.sprite_width / 2, obj.bbox_bottom) < global.interactable_show_distance;
	} else {
		scr_error("Instance does not exists", obj);
	}
	
}