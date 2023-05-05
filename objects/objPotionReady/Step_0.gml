
if add_note {
	if keyboard_check_released(vk_enter) || l_click {
		add_note = false;
		scr_start_message_gui("Note Saved"); //TODO Save node
	}
}

if scr_in_bounds_object(mouse_x, mouse_y, id) && l_click {

	add_note = !add_note;
	

	scr_add_item(sprPotion1, objPotion1, false, true, 1, 0);
	
	draw_fluid = false;
	mix_color = make_color_rgb(255,255,255);

	
	


	//if the recepie is right for quest
	if global.event_index <= 1 {
		global.event_index = 2;
	}
}



