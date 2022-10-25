
function scr_slider(min_val, max_val, curr_val, ypos){
	
	var slider_width = 256;
	var slider_ypos = 64 * ypos;
	
	draw_line(gui_width - slider_width, slider_ypos, gui_width, slider_ypos);
	
	var circle_r = 32;
	var circle_cent = 256 / (max_val-min_val);
	
	var circle_x = gui_width - slider_width + circle_cent * curr_val;
	
	
	
	if point_in_circle(mouse_x_gui, mouse_y_gui, circle_x, slider_ypos, circle_r) && mouse_check_button_pressed(mb_left) {
		if mouse_x_gui <= gui_width && mouse_x_gui >= gui_width - slider_width {
			circle_x = mouse_x_gui;
			
		}
	}
	
	draw_circle(circle_x, slider_ypos, circle_r, false);
	
	return (circle_x - (gui_width - 256)) * circle_cent;
	
}