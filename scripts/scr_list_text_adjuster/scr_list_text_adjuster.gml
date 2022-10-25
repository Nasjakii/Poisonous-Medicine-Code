// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_list_text_adjuster(list){
	
	var max_text_width = gui_width / 3;
		
	var list_size = ds_list_size(list);
	var i;
	for(i = 0; i < list_size; i++) {
		str = ds_list_find_value(list, i);
		
		
		var str_width = string_width(str);
		var break_count = floor(str_width / max_text_width);
		
		
		var str_break_count = 0;
		
		while (str_break_count < break_count && str_break_count < 3) {
			//find space before linebreak
			var last_break = 0;
			var j;
			var substr = "";
			for(j = last_break; string_width(substr) < max_text_width; j++) {
				substr = string_copy(str, last_break, j);
			}
			var j2;
			for(j2 = 0; j2 < string_length(substr); j2++) {
				if string_char_at(substr, j2) == " " {
					last_break = j2;
				}
			}
			str = string_insert("\n", str, last_break);
			str_break_count = string_count("\n",str);
		}
		
		if str_break_count > 2 {
			var break_index = 0;
			var i2;
			for(i2 = 0; i2 < string_length(str); i2++) {
				if string_char_at(str, i2) == "\n" {
					break_index++;
					if break_index > 2 {
						//Move all list enteries down by 1 and in the empty space set rest of string
						var new_substr = string_copy(str, i2 + 1, string_length(str) - i2);
															//+1 damit line_break weg bleibt
						ds_list_add(list, "Nix");
						var i3;
						for(i3 = ds_list_size(list) + 1; i3 > i + 1; i3--) {
							ds_list_replace(list, i3, ds_list_find_value(list, i3-1));
						}
						
						ds_list_replace(list, i + 1, new_substr);
						
						break;
						
						
					}
				}
			}
		}
		
		
		
		ds_list_replace(list, i, str);
		
		list_size = ds_list_size(list);
		
	}
	
	
	return list;
}