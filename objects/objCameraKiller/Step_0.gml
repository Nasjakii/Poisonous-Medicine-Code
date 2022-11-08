

if global.show_book == false {

//local var
var follow_object = global.camera_follow_object;

//TODO commet, understand, rework
if first_step == false {
	var pos_changed = false;
} else {
	var pos_changed = true;
}

if follow_xb != follow_object.x || follow_yb != follow_object.y {
	pos_changed = true;
	follow_xb = follow_object.x;
	follow_yb = follow_object.y;
}

if pos_changed {
	var i;
	for(i = 0; i < array_length(view_x); i++) {
		if view_visible[i] == false {
			if scrInBounds(follow_object.x,follow_object.y,
						   view_x[i], view_y[i], view_x[i] + view_w[i], view_y[i] + view_h[i]) {
				
				
				scr_cameras_reset();
				
				//Set new View
				view_visible[i] = true;
				view_camera[i] = camera_create_view(view_x[i],view_y[i],view_w[i], view_h[i]);
				
				
				
					var inst_box = instance_create_layer(view_x[i], view_y[i], "General", objFadingBox);
					inst_box.image_xscale = view_w[i];
					inst_box.image_yscale = view_h[i];
				
				
			}
		}
	}
	
}

}



