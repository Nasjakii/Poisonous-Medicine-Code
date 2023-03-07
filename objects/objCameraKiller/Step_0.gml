

var follow_object = global.camera_follow_object;

//still in curr_view ?
var in_curr_view_bounds = scr_in_bounds(follow_object.x,follow_object.y, view_x[curr_view_index], 
																	   view_y[curr_view_index], 
																       view_x[curr_view_index] + view_w[curr_view_index], 
																       view_y[curr_view_index] + view_h[curr_view_index]);

if !in_curr_view_bounds {
	//find the fitting view
	for(var i = 0; i < array_length(view_x); i++) {
		if scr_in_bounds(follow_object.x,follow_object.y, view_x[i], view_y[i], view_x[i] + view_w[i], view_y[i] + view_h[i]) {

			#region update view
				scr_cameras_reset();
			
				//Set new View
				view_visible[i] = true;
				view_camera[i] = camera_create_view(view_x[i],view_y[i],view_w[i], view_h[i]);

				var inst_box = instance_create_layer(view_x[i], view_y[i], "General", objFadingBox);
				inst_box.image_xscale = view_w[i];
				inst_box.image_yscale = view_h[i];

			
			#endregion

			curr_view_index = i;
			
		}
	}
}






