

if interact == true {
	//TODO sit on bench animation
	objKiller.x = x + sprite_width / 2;

	scr_camera_set("Special", id);
	
	//Set state to sitting (or in Killer itself)
	objKiller.state = objKiller.state_idle;
	
	#region Clock and text
		//Bigger Clock, different Position
		var clock_xpos = gui_width / 6 * 5;
		var clock_ypos = gui_height / 2;
	
		scr_watch_set(clock_xpos, clock_ypos, 2.5,2.5);
	
		//Draw Text Hold space to change time
		scr_set_text(c_black, fa_middle, fa_top, foMenu);
		draw_text(clock_xpos, clock_ypos + objWatch.sprite_height / 2 + scr_text_wooble(16), "Hold Space to Rest");
		scr_reset_text();
	#endregion

	if keyboard_check(vk_space) {
		//room_speed = 1000;
		global.day_time += 20;
	} else {
		room_speed = 60;
	}
	
	
	if keyboard_check_released(vk_space) || keyboard_check_released(vk_escape){
		interact = false;
		//change camera back to normal view
		scr_camera_set("Player");
		
		scr_watch_reset();
	}
	
}
