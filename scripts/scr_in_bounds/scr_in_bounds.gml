

function scr_in_bounds(ox, oy, x1,y1, x2, y2){
	if ox > x1 && ox < x2 && oy > y1 && oy < y2 {
		return true;
	}
}