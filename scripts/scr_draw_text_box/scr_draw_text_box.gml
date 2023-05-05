function scr_draw_text_box(xpos, ypos, str, border_width, font, box_color = c_black, text_color = c_white){
	
	draw_set_font(font);
	var width = string_width(str);
	var height = string_height(str);
	
	draw_set_color(box_color);
	draw_rectangle(xpos, ypos, xpos + width + border_width * 2, ypos + border_width * 2 + height, false);
	draw_set_color(text_color);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(xpos + border_width, ypos + border_width, str);
	
	scr_reset_text();
	
	
}