
function scr_load_inventory(){
	
	var file_name = string(game_project_name) +  "_" + "inventory";
	
	var load_buffer = buffer_load(file_name);
	if load_buffer == -1 {
		scr_error("error loading inventory", load_buffer);	
		return -1;
	}
	
	var json = buffer_read(load_buffer, buffer_string);
	buffer_delete(load_buffer);
	objBook.inventory = json_parse(json);
	

}