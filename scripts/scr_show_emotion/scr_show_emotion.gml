
function scr_show_emotion(emotion, anim_speed = 0.2){
	
	var spr = sprEmotionNone;
	
	switch(emotion) {
		case("Alerted"):
			spr = sprEmotionAlerted;
		break;
	}
	

	var curr_cam = view_camera[0];


	var cam_width = camera_get_view_width(curr_cam);
	if cam_width > room_width {
		cam_width = room_width;
	}

	var rescale = gui_width / cam_width;

	var xpos_rel = x - camera_get_view_x(curr_cam);
	var ypos_rel = y - camera_get_view_y(curr_cam);

	var xpos_gui = xpos_rel * rescale;
	var ypos_gui = ypos_rel * rescale;

	var subimg = global.game_step * anim_speed mod sprite_get_number(spr);

	draw_sprite(spr,subimg,xpos_gui,ypos_gui);

}