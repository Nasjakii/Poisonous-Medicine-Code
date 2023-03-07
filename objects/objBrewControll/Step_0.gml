
//All incredients clickable
#region ingredients

	var re =  scr_click_object_list(ds_bottles);
	if re != -1 selected_bottle = re;

#endregion


#region Test tube filling
	if mouse_check_button_released(mb_left) && fillheight < fillheight_max {
		if scr_in_bounds(mouse_x,mouse_y,objTestTube.bbox_left, objTestTube.bbox_top, objTestTube.bbox_right, objTestTube.bbox_right) && selected_bottle != 0 {
			
			ds_list_add(ds_colorList, ds_bottles[selected_bottle].red, ds_bottles[selected_bottle].green, ds_bottles[selected_bottle].blue);
			ds_list_add(objTestTube.ingredient_list, ds_bottles[selected_bottle]);
		
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
			cooked_timer = cooking_time;
			
			selected_bottle = 0;
		} else {
			selected_bottle = 0;
		}
	} 

#endregion


//poof
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

