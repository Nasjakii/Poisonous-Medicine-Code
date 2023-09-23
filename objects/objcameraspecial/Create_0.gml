
view_enabled = true;

//Set new View
view_visible[0] = true;

if instance_exists(objViewSpecial) {
	view_camera[0] = camera_create_view(objViewSpecial.x,objViewSpecial.y,objViewSpecial.image_xscale, objViewSpecial.image_yscale);
}

zoom_target = noone;
zoom_start = 1;
zoom_end = 0;
zoom_speed = 0.001;
zoom_width = 960;
zoom_height = 540;

