x = objKiller.x;
y = objKiller.y;


if keyboard_check_pressed(vk_up) && !instance_exists(objCameraMan) {
	curr_view = "Camera";
	
	camera_uplook = scr_create_single_object(objCameraMan);
	camera_uplook.x = x;
	camera_uplook.y = y;
	
	//Destroy all views and Cameras
	scr_cameras_reset();
}

scr_debug_info("Camera mode", "Camera mode: " + curr_view);

switch(curr_view) {
	case("Player"):
		if !instance_exists(objCameraKiller) instance_create_depth(0,0,0,objCameraKiller);
	break;
	case("Camera"):
		//cant look up while walking
		objKiller.state = objKiller.state_idle;
		
		//needs to be created with the current view 
		view_visible[0] = true;
		
		//get the current view the character is in
		var curr_view_id = scr_get_current_view();
		
		var v_width = curr_view_id.sprite_width;
		var v_height = curr_view_id.sprite_height;
		
		view_camera[0] = camera_create_view(curr_view_id.x, curr_view_id.y + (camera_uplook.y - objKiller.y), v_width, v_height);
		
		
		instance_destroy(objCameraKiller);
		
		if keyboard_check(vk_up) {
			//limit height of looking
			if camera_uplook.y > curr_view_id.y - v_height / 2 {
				//look up
				camera_uplook.y -= look_up_speed;
			}
		} else {
			if instance_exists(camera_uplook) {
				//look down again
				if camera_uplook.y < y {
					camera_uplook.y += look_up_speed * 2;
				} else {
					//switch view bakc
					instance_destroy(objCameraMan);
					curr_view = "Player";
				}
			}
		}
	break;
	case("Special"):
		if special_object != -1 {
			var o = special_object;
			scr_special_camera_create(o.bbox_left - 150, o.bbox_top - 100, o.bbox_right + 150);
		}
	break;
	case("Custom"):
		//controll yourself e.g zoom 
		instance_destroy(objCameraKiller);
	break;
	default:
		scr_error("Not a valid Camera", curr_view);
	break;
}