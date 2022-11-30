

var i;
for(i = 1; i < array_length(ds_bottles); i++) {
	with(ds_bottles[i]){
		scr_draw_gui_label(sprBrewLabel, i);
	}
}


if mouse_check_button_released(mb_left) {	
	var i;
	for(i = 1; i < array_length(hitbox); i++) {
		if hitbox[i] {
			
		}
	}
}

#region Observations

	var spr_note = sprObservationNotes;
	var xpos_1 =  gui_width / 2 - sprite_get_width(spr_note) / 2;
	var ypos_1 = gui_height / 2 - sprite_get_height(spr_note) / 2;
	var note_height = sprite_get_height(spr_note);
	var note_width = sprite_get_width(spr_note);
	var xpos_2 = xpos_1 + note_width;
	var ypos_2 = ypos_1 + note_height;


	//Close Observation notes
	if draw_notes && l_press && !scrInBounds(mouse_x_gui, mouse_y_gui, xpos_1, ypos_1, xpos_2, ypos_2) {
		draw_notes = false;
	}

	//Open Observation notes
	if scr_in_bounds_object(mouse_x, mouse_y, objTestTube) && l_press {
		draw_notes =  true;
	}


	if draw_notes {

		draw_sprite(spr_note, 1, xpos_1, ypos_1);
		var offset = 48;
		
		var str_1 = "Dump";
		var str_2 = "Complete";
		
		
		
		//Throw away
		if fillheight > 0 {
			var button_x1 = xpos_1 + offset;
			var button_x2 = button_x1 + string_width(str_1);
			var button_y1 = ypos_2 - offset;
			var button_y2 = button_y1 - string_height(str_1);
			
			scr_set_text(c_red, fa_left, fa_bottom, foGUIButton);
			draw_text(button_x1, button_y1, str_1);
			draw_rectangle(button_x1, button_y1, button_x2, button_y2, true);
			
			//Clickable 
			if point_in_rectangle(mouse_x_gui, mouse_y_gui, button_x2, button_y2, button_x1, button_y1) && l_click{
				draw_notes = false;
		
				fillheight = 0;
				mix_color = 0;

			}
		}
		
		//Finish recipe
		var button_x3 = xpos_2 - offset;
		var button_x4 = button_x3 - string_width(str_2);
		var button_y3 = ypos_2- offset;
		var button_y4 = button_y3 - string_height(str_2);
		
		scr_set_text(c_gray, fa_left, fa_bottom, foGUIButton);
	
		if fillheight == fillheight_max {
			draw_set_color(c_black);
	
			if point_in_rectangle(mouse_x_gui, mouse_y_gui, button_x4, button_y4, button_x3, button_y3) && l_click{
				draw_notes = false;
				objPotionReady.mix_color = mix_color;
				objPotionReady.draw_fluid = true;
		
				fillheight = 0;
				mix_color = 0;

			}
		}
		draw_text(button_x4, button_y3, str_2);
		draw_rectangle(button_x3, button_y3, button_x4, button_y4, true);
		scr_reset_text();
		
	
	}

#endregion





