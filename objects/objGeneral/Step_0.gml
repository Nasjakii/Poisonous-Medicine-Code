
#region Keybinds

//Reset Room
if keyboard_check_released(vk_escape) {
	if instance_exists(objBook) {
		if global.show_book == false {
			global.show_book = true;
			//go to settings
			objBook.book_subimage = 5;
		} else {
			global.show_book = false;
			objBook.book_subimage = 1;
		}
	} else {
		room_goto(Menu);
	}
}


//Fullscreen bei f11
if keyboard_check_released(vk_f11) {
	if window_get_fullscreen() == true {
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}

//Switch Camera

if keyboard_check_released(vk_f1) {
	scr_camera_killer_set(objCameraMan);
}
if keyboard_check_released(vk_f2) {
	scr_camera_killer_set(objKiller);
}

if keyboard_check_released(vk_f3) {
	scr_camera_killer_set(objBlimp);
}

if keyboard_check_released(vk_f4) {
	global.rain = !global.rain;

}


//Debug Mode
scr_debug_info("Event Index", global.event_index);

if keyboard_check_released(vk_f5) {
	draw_debug = !draw_debug;
}

//Force Player here
if keyboard_check_released(vk_f6) {
	objKiller.x = mouse_x;
	objKiller.y = mouse_y;
}

if keyboard_check_pressed(vk_right) {
	global.event_index++;
}

if keyboard_check_pressed(vk_left) {
	global.event_index--;
}

#endregion

global.game_step++;




