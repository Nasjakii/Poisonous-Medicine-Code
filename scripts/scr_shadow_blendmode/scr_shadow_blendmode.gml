// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shadow_blendmode(alpha = 0.7){
	//Check for objLightSource existing
	if instance_exists(objLightSource) {
		var top_y = bbox_top;
		var top_x = bbox_left + (bbox_right - bbox_left) / 2;
		
		var light_source_x = objLightSource.x;
		var light_source_y = objLightSource.y;
	
		var a = scr_calculate_slope(light_source_x, light_source_y, top_x, top_y);
		var n = top_y - a* top_x;
		
		
		var shadow_y = bbox_bottom;
		var shadow_x = (shadow_y - n) / a;
		
		//draw_line(light_source_x, light_source_y, shadow_x, shadow_y);
		
		//Shadow
		
		sin_x += 0.05;
		var wobble = 1.5 * sin(sin_x);
		
		var x1 = bbox_left - wobble;
		var x2 = bbox_right + wobble;
		
		
		if shadow_x > top_x {
			x2 = shadow_x;
		} else {
			x1 = shadow_x;
		}
		
		
		//TODO Alpha depending on the brightness + not elliptical shadow
		draw_set_alpha(alpha);
		draw_ellipse_color(x1, bbox_bottom - 5, x2, bbox_bottom + 5, c_black, c_black, false);
		draw_set_alpha(1);
	}
}