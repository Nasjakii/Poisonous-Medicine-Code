
function scr_load(type, section, key, default_val){
	
	var re_val = 0;
	ini_open(string(game_project_name) + "_safe.ini");
		
		switch(type) {
			case("String"):
				re_val = ini_read_string(section, key, default_val);
			break;
			case("Real"):
				re_val = ini_read_real(section, key, default_val);

			break;
			case("Array"):
				
				var file_name = working_directory + section + key + ".txt";
				var file = file_text_open_read(file_name);

				if file_exists(file_name) {
				    var txt = file_text_read_string(file);
				    re_val = json_parse(txt);
				    file_text_close(file); 
				} else {
					re_val = default_val;
				}
				
			break;
			default:
				scr_error("Wrong datatype", type);
			break;
		}

	ini_close();
	
	return re_val;
}