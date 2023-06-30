
if scr_in_bounds(mouse_x, mouse_y, bbox_left - 10, bbox_top, bbox_right + 10, bbox_top + 32) && l_press {
	//hold_x = mouse_x;
	//hold_y = mouse_y;
	grabbed = true;
} 
if mouse_check_button_released(mb_left) {
	grabbed = false;
}



var middle_red = 0;
var middle_green = 0;
var middle_blue = 0;
var middle_alpha = 0;

var list_size = ds_list_size(ingredient_list);
for(var i = 0; i < list_size; i += 3) {
	var inst = ds_list_find_value(ingredient_list,i);
	middle_red += inst.red;
	middle_green += inst.green;
	middle_blue += inst.blue;
	
	middle_alpha += inst.alpha;
}

mix_color = make_color_rgb(middle_red / list_size, middle_green / list_size, middle_blue / list_size);
mix_alpha = middle_alpha / list_size;



if fillcount == fillcount_max cooking = true;

//poof
if cooking && cooked_timer > 0 {
	cooked_timer--;	
	///show effect
} else if cooked_timer <= 0 {
	cooked_timer = cooking_time;
	instance_create_layer(x,y,layer,objPotionPoof);
	cooking = false;
}


if cooked_timer = 0 {
	//full
	draw_notes = true;
}

