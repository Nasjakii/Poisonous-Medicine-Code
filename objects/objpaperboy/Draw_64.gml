

if special_interact && scr_in_range(objKiller) interact = true;

if interact {
	scr_draw_dialog(dialog_index);
} else {
	scr_special_camera_reset();
} 





