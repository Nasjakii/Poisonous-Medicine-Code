var i;
for(i = 1; i < array_length(ds_bottles); i++) {
	var xpos = ds_bottles[i].x - ds_bottles[i].sprite_xoffset;
	var ypos = ds_bottles[i].y - ds_bottles[i].sprite_yoffset;
	var spr_width = ds_bottles[i].sprite_width;
	var spr_height = ds_bottles[i].sprite_height;
	
	hitbox[i] =  point_in_rectangle(mouse_x,mouse_y,xpos,ypos,xpos + spr_width, ypos + spr_height);
	
}

if mouse_check_button_pressed(mb_left) {
	selected_bottle = 0;
	
	var i;
	for(i = 1; i < array_length(hitbox); i++) {
		if hitbox[i] {
			selected_bottle = i;
			break;
		}
	}
}



if mouse_check_button_released(mb_left) && fillheight < 26 * objTestTube.image_yscale {
	if scrInBounds(mouse_x,mouse_y,objTestTube.x,objTestTube.y,objTestTube.sprite_width + objTestTube.x, objTestTube.sprite_height + objTestTube.y)
		&& selected_bottle != 0 
	{
		ds_list_add(ds_colorList, ds_bottles[selected_bottle].red, ds_bottles[selected_bottle].green, ds_bottles[selected_bottle].blue);
		
		var list_size = ds_list_size(ds_colorList);
		
		var middle_red = 0;
		var middle_green = 0;
		var middle_blue = 0;
		
		for(i = 0; i < list_size; i += 3) {
			middle_red += ds_list_find_value(ds_colorList,i);
			middle_green += ds_list_find_value(ds_colorList,i + 1);
			middle_blue += ds_list_find_value(ds_colorList,i + 2);
		}
		
		var mid = (list_size / 3);
		mix_color = make_color_rgb(middle_red / mid, middle_green / mid, middle_blue / mid);

		
		fillheight += 5;
		selected_bottle = 0;
	} else {
		selected_bottle = 0;
	}
} 

//full
if fillheight > 25 * objTestTube.image_yscale debug "true"));

