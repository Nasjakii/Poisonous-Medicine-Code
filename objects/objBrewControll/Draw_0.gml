
for(var i = 0; i < array_length(ds_bottles); i++) {
	var o = ds_bottles[i];
	var mid_x = (o.bbox_left + o.bbox_right) / 2;
	var ypos = o.bbox_bottom + label_y_gap;
	draw_rectangle(mid_x - label_width / 2, ypos, mid_x + label_width / 2, ypos + label_height, false);
}


if selected_bottle != 0 {
	draw_sprite(object_get_sprite(ds_bottles[selected_bottle]), 1,mouse_x, mouse_y);
}



