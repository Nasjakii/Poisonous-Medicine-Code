function scr_subject_talking(instance){
	//tests if is an subject -> talking var exists
	if scr_instance_can_talk(instance)  {
		return instance.talking;
	}
}