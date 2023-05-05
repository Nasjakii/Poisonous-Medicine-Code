function scr_visible(obj_looking, obj_target, obj_blocking){
	
	if obj_blocking == noone return false;
	
	//makes sure vision from obj a to obj b is not blocked by obj c
	var _visible = true;
	
	//collision line to top and to bottom
	var check_top = collision_line(obj_looking.x,obj_looking.y,obj_target.x, obj_target.bbox_top,obj_blocking,true,true);
	var check_bottom = collision_line(obj_looking.x,obj_looking.y,obj_target.x, obj_target.bbox_bottom,obj_blocking,true,true);
	
	if check_top && check_bottom {
		_visible = false;
	}
	
	return _visible;
}