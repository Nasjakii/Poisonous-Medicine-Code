// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
 function scr_climb(climb){
	var animation = "";
	var height = 0;

	switch(climb){
		case("High"):
			animation = "Pull up";
			height = 128;
		break;
		case("Medium"):
			animation = "Pull up small";
			height = 64;
		break;
		case("Low"):
			animation = "Step up";
			height = 32;
		break;
	}

	//skeleton_get_minmax()

				//Current frame							//last frame -1
	if skeleton_animation_get_frame(0) > skeleton_animation_get_frames(anim_before) - 1 {
		y -= height;
		
		if image_xscale > 0 {
			x += 55;
		} else {
			x -= 55;
		}
	
		//skeleton_animation_set("Idle");
		state = state_idle;
		
	} else {
		//If not last frame 
		set_animation(animation); //Check if animation is right
		
		state = state_climbing;
	}
	
}