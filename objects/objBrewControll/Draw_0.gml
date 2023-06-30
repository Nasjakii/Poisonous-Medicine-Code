
for(var i = 0; i < array_length(ingredients_arr); i++) {
	var o = ingredients_arr[i];
	var mid_x = (o.bbox_left + o.bbox_right) / 2;
	var ypos = o.bbox_bottom + label_y_gap;
	draw_rectangle(mid_x - label_width / 2, ypos, mid_x + label_width / 2, ypos + label_height, false);
}


//draw ingredient at cursor
if selected_ingredient != 0 {
	var spr = object_get_sprite(ingredients_arr[selected_ingredient]);
	draw_sprite(spr, 1,mouse_x - sprite_get_width(spr) / 2, mouse_y - sprite_get_height(spr) / 2);
}



