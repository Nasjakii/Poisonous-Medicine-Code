
function scr_safe(type, section, key, value){
	ini_open(string(game_project_name) + "_safe.ini");
	if type == "Real" {
		ini_write_real(section, key, value);
	} else if type == "String" {
		ini_write_string(section, key, value);
	} else if type == "Array" {
		
		var json_str = json_stringify(npc);

		var file = file_text_open_write(working_directory + section + key + ".txt");
		file_text_write_string(file, json_str);
		file_text_close(file);

	} else {
		scr_error("Wrong datatype", type);
	}
	
	ini_close();
}