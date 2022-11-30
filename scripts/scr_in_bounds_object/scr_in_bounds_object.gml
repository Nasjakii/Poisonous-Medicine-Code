function scr_in_bounds_object(ox,oy, o){
	
	return (ox > o.bbox_left && ox < o.bbox_right && oy < o.bbox_bottom && oy > o.bbox_top)
}