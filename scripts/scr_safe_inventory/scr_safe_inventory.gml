
function scr_safe_inventory(){
	
	var inv = scr_get_inventory();
	if inv == undefined {
		scr_error("unanble to save", inv);
		return -1;
	}
	
	var json = json_stringify(inv);
	var file_name = string(game_project_name) +  "_" + "inventory";

	var save_buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
	buffer_write(save_buffer, buffer_string, json);
	buffer_save(save_buffer, file_name);
	buffer_delete(save_buffer);
	
	
	


}