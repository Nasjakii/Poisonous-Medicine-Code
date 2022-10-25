
function scr_calculate_slope(x1,y1,x2,y2){
	
	//Put left coordinates on 1
	if x1 > x2 {
		var temp1 = x1;
		x1 = x2;
		x2 = temp1;
		
		var temp2 = y1;
		y1 = y2;
		y2 = temp2;	
	}
	
	return (y2 - y1) / (x2 - x1);
}