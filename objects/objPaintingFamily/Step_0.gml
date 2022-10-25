

if interact {

	objKiller.monolog = true;

	scr_special_camera_create(bbox_left - global.interactable_show_distance * 2, y - 50, bbox_right + global.interactable_show_distance * 2);
	
	
} else {

	scr_special_camera_reset();
	
}