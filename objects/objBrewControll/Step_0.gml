
//All incredients clickable
#region ingredients
	for(var i = 1; i < array_length(ds_bottles); i++) {
		var xpos = ds_bottles[i].x - ds_bottles[i].sprite_xoffset;
		var ypos = ds_bottles[i].y - ds_bottles[i].sprite_yoffset;
		var spr_width = ds_bottles[i].sprite_width;
		var spr_height = ds_bottles[i].sprite_height;
	
		hitbox[i] =  point_in_rectangle(mouse_x,mouse_y,xpos,ypos,xpos + spr_width, ypos + spr_height);
	
	}

	//Click on bottle
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

#endregion


#region Test tube filling
	if mouse_check_button_released(mb_left) && fillheight < fillheight_max {
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
			
			if fillheight != fillheight_max {
				if fillheight + fillheight_increment < fillheight_max  {
					fillheight += fillheight_increment;
				} else {
					fillheight = fillheight_max;
				}
			}
			
			cooking = true;
			
			selected_bottle = 0;
		} else {
			selected_bottle = 0;
		}
	} 

#endregion


if cooking {
	if cooked_timer > 0 {
		//create bubbles
		
		
		cooked_timer--;	
	} else {
		//create poof

		var xpos = objTestTube.bbox_left + objTestTube.sprite_width / 2;
		var ypos =  objTestTube.y + objTestTube.sprite_height - fillheight - 3;
		
		instance_create_layer(xpos, ypos, layer, objPotionPoof);
		
		cooking = false;
		cooked_timer = cooking_time;
	}
}



//full
if fillheight == fillheight_max && cooked_timer = 0 {
	draw_notes = true;
}

