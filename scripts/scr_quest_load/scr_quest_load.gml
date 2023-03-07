
function scr_quest_load(){
	var file_name = "Quest_data.dat";
	if file_exists(file_name) {
		return ds_map_secure_load(file_name);
	} else {
		scr_error("File does not exist", file_name);
		return ds_map_create(); //empty map
	}
}