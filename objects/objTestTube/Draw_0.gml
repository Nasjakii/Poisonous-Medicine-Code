
var obj = objBrewControll;

if obj.fillheight > 0 {
	
	var fillheight = obj.fillheight * 3 - 3;
	
	//prepare surface
	if (!surface_exists(surface)) {
		surface = surface_create((bbox_right + 50) - (bbox_left - 50), fillheight);
	}
	surface_set_target(surface);
	
	//draw sprites
	draw_sprite_ext(sprTestTubeFluid, 1, 50,fillheight - (obj.fillheight_max + fillheight),1,1,0, c_white, 1);
	
	//draw the fluid
	/*
	gpu_set_colorwriteenable(1,1,1,0);
	draw_rectangle_color(bbox_left - 50,bbox_bottom,
						 bbox_right + 50, bbox_bottom - fillheight,
						 obj.mix_color,obj.mix_color,obj.mix_color,obj.mix_color, false);

	gpu_set_colorwriteenable(1,1,1,1);
	*/
	//finish surface
	surface_reset_target();
	draw_surface(surface, bbox_left - 50, bbox_bottom - fillheight); //draws from bottom left to top right
	surface_free(surface);
	
}



#region draw testtube
	

	if obj.fillheight == obj.fillheight_max {
		
	
		var rot = clamp(point_direction(x,y,mouse_x,mouse_y) - 90, -70, 70);
		draw_sprite_ext(sprTestTubeFluid, 1, x,y,1,1,rot, c_white, 1);
		
		
		if rot >= 70 {
			//reset
			show_debug_message("leeren")
		} else if rot <= -70 {
		
			if objBrewControll.cooked_timer <= objBrewControll.cooking_time {
				show_debug_message("umgefüllt")
						
				objPotionReady.draw_fluid = true;
				objPotionReady.mix_color = objBrewControll.mix_color;
				
				objBrewControll.fillheight = 0;
				objBrewControll.mix_color = 0;
				
				ds_list_clear(ingredient_list);
			}
		}
	
	
	} else {
		draw_self();
	}
	
	

#endregion

