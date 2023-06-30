
#region daycycle

	//Day and Night cycle while not raining
	if global.rain = false {
		darkness_effect = -1/80*sqr(global.day_time / 1000 - 12)+0.9;
	} else {
		//Rain on
		//darkness effect cant get lower than certain value
		darkness_effect = clamp(-1/80*sqr(global.day_time / 1000 - 12)+0.9, 0.5, 0.9);
	}

	//Control daytime
	if global.day_time < day_length {
		global.day_time++;
	} else {
		global.day_time = 0;
	}

	var darkness_color = c_black;

	if global.rain darkness_color = make_color_rgb(0,0,0);

#endregion



#region darkness surface

scr_debug_info("Darkness", darkness_effect);

//Create Light surface to draw on if it doesnt exist
if surface_exists(light_surface) == false {
	light_surface = surface_create(room_width, room_height);
}

surface_set_target(light_surface);
draw_clear_alpha(darkness_color, darkness_effect);

if darkness_effect > 0.5 {
	layer_set_visible("Lights", true);
	
	var i;
	for(i = 0; i < ds_list_size(list_of_lights); i++) {
		with(ds_list_find_value(list_of_lights, i)) {
		
		
		
			gpu_set_blendmode(bm_add);
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,  image_yscale, 0, c_white, 0.1);
			gpu_set_blendmode(bm_normal);
			//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale,  image_yscale, 0, c_white, 0.2);
		
			gpu_set_blendmode(bm_normal);
		}
	}
} else {
	layer_set_visible("Lights", false);
}



surface_reset_target();

draw_surface(light_surface, 0,0);

#endregion


#region sunlight surface

	//Mult is between 0 and 1
	var mult = 0.5 / darkness_effect;
	if scr_is_between(darkness_effect, 0.3, 0.5) darkness_color = make_color_rgb(30 * mult,20 * mult,20 * mult);
	
	//create sunlight on surface
	if surface_exists(sunlight_surface) == false {
		sunlight_surface = surface_create(room_width, room_height);
		
	}
	
	surface_set_target(sunlight_surface);
		//TODO Belndmode Sunlight effect
		/*
		gpu_set_blendmode(bm_normal);
			draw_set_alpha(0.3);
			draw_set_color(c_yellow);
			
			var sun_x = room_width;
			var sun_y = -100;
			
			var shine_x1 = -200;
			var shine_y1 = room_height;
			
			var shine_x2 = 200;
			var shine_y2 = room_height;
			
			draw_triangle(sun_x, sun_y, shine_x1, shine_y1, shine_x2, shine_y2,false);
			
			draw_set_alpha(1);
		gpu_set_blendmode(bm_normal);
		*/

	surface_reset_target();
	
	draw_surface(sunlight_surface, 0,0);
#endregion


//create shadow on surface
if surface_exists(shadow_surface) == false {
	shadow_surface = surface_create(room_width, room_height);
	
}

surface_set_target(shadow_surface);
	//clears the surface
	draw_clear_alpha(c_black,0);

	
	//draw the shadow
	gpu_set_blendmode(bm_normal);
	inst = objKiller;
	with(inst) {
		scr_shadow_blendmode(1);
	}
	//subtract the ground
	gpu_set_blendmode(bm_subtract);
	var inst;
	//Could also add an shadow layer
	for(var i = 0; i < instance_number(objBlockade); i++){
		//instances[i] = instance_find(objBlockade, i);
		inst = instance_find(objBlockade, i);
		draw_sprite_ext(inst.sprite_index, 1, inst.x, inst.y, inst.image_xscale, inst.image_yscale,0,c_black,1);
	}
	
	//draw the shadow without the above
	gpu_set_blendmode_ext(bm_inv_dest_alpha, bm_zero);
	inst = objKiller;
	with(inst) {
		scr_shadow_blendmode(0.7);
	}
	
	gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface(shadow_surface,0,0);





