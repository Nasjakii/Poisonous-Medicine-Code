
if zoom_target != noone {
		
	zoom_start += zoom_speed;
	
	var width = zoom_width * zoom_start;
	var height = zoom_height * zoom_start;
	camera_set_view_pos(view_camera[0], zoom_target.x - width / 2, zoom_target.y - height / 2);
	camera_set_view_size(view_camera[0], width, height)


	if abs(zoom_start - zoom_end) <= 0.1 zoom_target = noone; //zoom finished
}
