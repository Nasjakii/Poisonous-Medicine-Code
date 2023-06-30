function scr_hover_box_gui(x1, y1, x2, y2, draw_outline = false){
	
	if draw_outline {
		draw_set_color(c_red);
		draw_rectangle(x1,y1,x2,y2,true);
		draw_set_color(c_white);
	}
	
	return point_in_rectangle(mouse_x_gui, mouse_y_gui, x1,y1,x2,y2);
}