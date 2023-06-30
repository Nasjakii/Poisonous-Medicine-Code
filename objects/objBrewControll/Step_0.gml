
#region ingredients

	var re =  scr_click_object_list(ingredients_arr);
	if re != -1 selected_ingredient = re;

#endregion


#region Test tube filling
	var testTube = objTestTube;


	if testTube.fillcount < testTube.fillcount_max {
		var hovered = scr_in_bounds(mouse_x,mouse_y,testTube.bbox_left, testTube.bbox_top, testTube.bbox_right, testTube.bbox_right);
		if hovered && selected_ingredient != 0 && l_released  {
		
			var ingredient_obj = ingredients_arr[selected_ingredient];
			
			ds_list_add(testTube.ingredient_list, ingredient_obj);
			testTube.fillcount++;


		}	
	}
	
	if l_released selected_ingredient = 0;

#endregion






