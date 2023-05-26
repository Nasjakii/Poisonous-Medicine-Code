function scr_get_path_duration(path){
	var duration = 0;
	
	var len = path_get_length(path);
	var sp = path_get_speed(path, 0);
	
	duration = len / sp;
	
	//scr_debug(len, "length");
	//scr_debug(sp, "speed");
	//scr_debug(duration, "duration");


	
	return duration;
}