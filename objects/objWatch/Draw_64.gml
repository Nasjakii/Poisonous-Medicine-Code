

#region Watch
	
	
	
	
	var o = objGuiController;
	
	o.watch_arm1_rotation = -global.day_time * 0.45;
	o.watch_arm2_rotation = -global.day_time * 0.015 * 2;
		
	draw_self();

	
	
	draw_sprite_ext(sprWatchArm1, 1, x, y,image_xscale,image_yscale,o.watch_arm1_rotation, c_black, 1);
	draw_sprite_ext(sprWatchArm2, 1, x, y,image_xscale,image_yscale,o.watch_arm2_rotation, c_black, 1);
	
#endregion
