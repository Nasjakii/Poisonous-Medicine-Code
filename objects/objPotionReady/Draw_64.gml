

if add_note {

	//Open the notes 
	var spr = sprObservationNotes;
	var width = sprite_get_width(spr);
	var xpos = bbox_left * gui_width / room_width;
	var ypos = bbox_top * gui_height / room_height;
	var text_yoffset = 32;
	var text_xoffset = 16;
	
	
	draw_sprite(spr, 1, xpos, ypos);

	
	//type notes
	if string_length(typed_string) <= note_max_length {
		typed_string += keyboard_string;
	}
	
	draw_set_font(foCustom);
	draw_set_valign(fa_top);
	draw_set_color(c_black);
	var text_sep = string_height(typed_string);
	
	draw_text_ext(xpos + text_xoffset, ypos + text_yoffset, typed_string, text_sep, width - text_xoffset);
	scr_reset_text();
	
}
keyboard_string = "";