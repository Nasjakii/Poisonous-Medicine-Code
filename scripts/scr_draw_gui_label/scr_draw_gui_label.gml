
function scr_draw_gui_label(spr, index){
	draw_sprite(spr, index, x * (gui_width / room_width), (y + sprite_get_height(spr) / 6) * (gui_height / room_height));
}