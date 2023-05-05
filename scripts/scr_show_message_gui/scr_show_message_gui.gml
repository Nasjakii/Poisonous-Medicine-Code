//to be called in the gui controller
function scr_show_message_gui(message_timer){
	draw_set_font(foGUIMessage);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	
	draw_set_alpha(abs(sin(message_timer)));
	draw_text(gui_width / 2, 100, gui_message);
	
	scr_reset_text();
}