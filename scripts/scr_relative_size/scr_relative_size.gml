
function scr_relative_size(size1, size2, stretch_to){
	var re;
	re[0] = 0;
	re[1] = 0;
	
	//if width is bigger than height
	if size1 > size2 {
		re[0] = stretch_to;
		re[1] = size2 / size1 * stretch_to;
	} else {
		re[1] = stretch_to;
		re[0] = size1 / size2 * stretch_to;
	}
	
	return re;
	
}