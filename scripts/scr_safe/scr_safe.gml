
function scr_safe(type, section, key, value){
	ini_open(string(game_project_name) + "_safe.ini");
	if type == "Real" {
		ini_write_real(section, key, value);
	} else if type == "String" {
		ini_write_string(section, key, value);
	}
	
	ini_close();
}