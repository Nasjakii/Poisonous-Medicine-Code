function scr_hover_box(x1, y1, x2, y2, draw_outline = false){
	
	if draw_outline draw_rectangle(x1,y1,x2,y2,true);
	
	return point_in_rectangle(mouse_x, mouse_y, x1,y1,x2,y2);
}