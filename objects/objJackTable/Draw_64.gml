

if !show_board exit;

var gap = 50;
var size = gui_height - gap * 2;
draw_set_color(c_white);

var xpos = gui_width / 2 - size / 2;
var ypos = gap;
draw_sprite(sprJackField,1,xpos, ypos);

/*
var field_gap = 74;
var field_size = sprite_get_height(sprJackField) - field_gap * 2;
var field_x = xpos + field_gap;
var field_y = ypos + field_gap;

var field_x2 = field_x + field_size;
var field_y2 = field_y + field_size;
*/
//draw_rectangle(field_x, field_y, field_x2, field_y2, false);

			   
