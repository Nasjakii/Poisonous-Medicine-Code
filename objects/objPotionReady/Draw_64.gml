

if draw_notes {
	//Open the notes 
	var spr = sprObservationNotes;
	var width = sprite_get_width(spr);
	var xpos = (gui_width - width) / 2
	var ypos = 0;
	
	draw_sprite(spr, 1, xpos, ypos);
	
	for(var i = 0; i < ds_list_size(objTestTube.ingredient_list); i++) {
		var str = ds_list_find_value(objTestTube.ingredient_list, i);
		draw_text(xpos, ypos, str);
		debug str));
	}
	
	//type notes
	typed_string = keyboard_string;
	
	draw_text(xpos, ypos, typed_string);
}