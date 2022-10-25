
function set_animation(animation_name){
	
	if skeleton_animation_get() != animation_name {

		var mix_speed = 0.03;


		skeleton_animation_mix(anim_before, animation_name, mix_speed);
		anim_before = animation_name;
		skeleton_animation_set(anim_before);
		

	}
}