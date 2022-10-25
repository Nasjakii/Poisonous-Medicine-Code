function scr_animation_end(){
	//Current frame							//last frame -1
	if skeleton_animation_get_frame(0) >= skeleton_animation_get_frames(anim_before) - 1 {
		state = state_idle;	
		return true;
	}
}