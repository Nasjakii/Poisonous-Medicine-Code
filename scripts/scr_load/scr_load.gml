
function scr_load(type, section, key, default_val){
	
	var re_val = 0;
	ini_open(string(game_project_name) + "_safe.ini");
	
		if type == "String" {
			re_val = ini_read_string(section, key, default_val);
		} else if type == "Real" {
			re_val = ini_read_real(section, key, default_val);
		} else {
			scr_error("Wrong datatype", type);
		}
	
	ini_close();
	
	return re_val;
}