

var obj = objBrewControll;

#region draw fluid
	if obj.fillheight > 0 {
	
		var fillheight = obj.fillheight * 3 - 3;
	
		//prepare surface
		if (!surface_exists(surface)) {
			surface = surface_create((bbox_right + 50) - (bbox_left - 50), fillheight);
		}
		surface_set_target(surface);
	
		//draw Test tube fluid
		if obj.fillheight < obj.fillheight_max || !(obj.cooked_timer == obj.cooking_time) {
			draw_sprite_ext(sprTestTubeFluid, 1, 67, -(obj.fillheight_max-fillheight) - 43,1,1,0, obj.mix_color, 1);
		}
	
		//draw the fluid
		gpu_set_colorwriteenable(1,1,1,0);
		draw_rectangle_color(bbox_left - 50,bbox_bottom,
							 bbox_right + 50, bbox_bottom - fillheight,
							 obj.mix_color,obj.mix_color,obj.mix_color,obj.mix_color, false);

		gpu_set_colorwriteenable(1,1,1,1);
	
		//finish surface
		surface_reset_target();
		draw_surface(surface, bbox_left - 50, bbox_bottom - fillheight); //draws from bottom left to top right
		surface_free(surface);
	
	}
#endregion



#region draw testtube
	

	if obj.fillheight == obj.fillheight_max && obj.cooked_timer == obj.cooking_time {
		
	
		var rot = clamp(point_direction(x,y,mouse_x,mouse_y) - 90, -70, 70);
		draw_sprite_ext(sprTestTubeFluid, 1, x,y,1,1,rot, obj.mix_color, 1);
		draw_sprite_ext(sprite_index, 1, x,y, 1,1,rot,c_white,1);
		
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


var br = bbox_right;
var bl = bbox_left;
var bt = bbox_top;
var mid = (bl + br) / 2;

var tt_width = 300;
var tt_height = 50;


//cooking 
var left = mid - tt_width / 2;
var right = mid + tt_width / 2;
var top = bt- 50

draw_set_color(c_dkgray);
draw_rectangle(left, top, right, top - tt_height, false);
draw_set_color(c_maroon); 
draw_rectangle(left, top, right + (right - left) * -1 * objBrewControll.cooked_timer / objBrewControll.cooking_time, top - tt_height, false);



for(var i = 0; i < ds_list_size(ingredient_list); i++) {
	draw_set_color(c_white);
	draw_set_font(foText);
	var inst = ds_list_find_value(ingredient_list, i);
	var name = object_get_name(inst);
	draw_text_transformed(br, bt + 10 * i, "Data " + string(i) + ": " + name, 0.2,0.2,0);

}


scr_reset_text();


