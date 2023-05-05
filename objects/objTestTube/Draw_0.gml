

var obj = objBrewControll;


if scr_in_bounds(mouse_x, mouse_y, bbox_left - 10, bbox_top, bbox_right + 10, bbox_bottom) && mouse_check_button_pressed(mb_left) {
	grabbed = true;
} 
if mouse_check_button_released(mb_left) {
	grabbed = false;
}

#region draw testtube
	

	#region Slider
	if grabbed {
		var spr = sprSlider;
		var spr_width = sprite_get_width(spr);
		var spr_height = sprite_get_height(spr);
		var spr_yoffset = 5;
		
			var xpos = clamp(mouse_x, x - spr_width / 2, x + spr_width / 2);
			
			var bar_width = 2;
			var rot = clamp(point_direction(x,y,mouse_x,mouse_y) - 90, -70, 70);
			
			//draw bar
			draw_set_color(c_red);
			draw_rectangle(xpos, bbox_top - spr_yoffset, xpos - bar_width, bbox_top - spr_yoffset - spr_height, false);
			draw_set_color(c_white);
			
			if rot >= 70 { //empty bottle without needing to fill it completly
				//reset

				scr_reset_fluid();
			}
			
			//draw slider
			draw_sprite(spr, 1, x, bbox_top - spr_yoffset);
		
	} else {
		rot = 0;
	}

		
		

	
	#endregion
	
	
	

	if obj.fillheight == obj.fillheight_max && obj.cooked_timer == obj.cooking_time {
		
		 if rot <= -70 {
		
			if objBrewControll.cooked_timer <= objBrewControll.cooking_time {

				objPotionReady.draw_fluid = true;
				objPotionReady.mix_color = objBrewControll.mix_color;
				scr_reset_fluid();
				
			}
		}
	
	
	} 
	
	

#endregion

#region draw fluid
	if obj.fillheight > 0 {
	
		var fillheight = obj.fillheight * 3 - 3;
	
		//prepare surface
		if (!surface_exists(surface)) {
			surface = surface_create(bbox_right - bbox_left + surf_width, fillheight);
		}
		surface_set_target(surface);
	
		//draw Test tube fluid

		draw_sprite_ext(sprTestTubeFluid, 1, surf_width / 2 + 17, -(obj.fillheight_max-fillheight) - 43,1,1,rot, obj.mix_color, 1);

	
		//draw overlap
		gpu_set_colorwriteenable(1,1,1,0); //(alpha will not be changed only color)
		draw_rectangle_color(bbox_left - 70,bbox_bottom,
							 bbox_right + 70, bbox_bottom - fillheight,
							 obj.mix_color,obj.mix_color,obj.mix_color,obj.mix_color, false);
		
		gpu_set_colorwriteenable(1,1,1,1);
	
		//finish surface
		surface_reset_target();
		draw_surface(surface, bbox_left - surf_width / 2, bbox_bottom - fillheight); //draws from bottom left to top right
		surface_free(surface);
	
	}
#endregion

draw_sprite_ext(sprite_index, 1, x,y, 1,1,rot,c_white,1);

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


