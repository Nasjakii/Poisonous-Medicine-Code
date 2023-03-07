
//view changed
var view_change = curr_view != new_view;

var cam = view_get_camera(curr_view);
var view_width = camera_get_view_width(cam);
var view_height = camera_get_view_width(cam);

min_x = camera_get_view_x(cam);
max_x = min_x + view_width;


if view_change {
	curr_view = new_view;
	min_y = camera_get_view_y(cam) - 400;
	max_y = min_y + view_height;
	
	var drop_rate = width * drop_mult * 0.05 * view_height; //just twisted the values 0.05
} else {
	min_y = 0;
	max_y = 0;
	
	var drop_rate = width * drop_mult;
}


if global.rain == true {
	
	randomize();
	var drop_count = irandom_range(drop_rate, drop_rate+5);

	var i;
	for(i = 0; i < drop_count; i++) {
		var ran_x = irandom_range(min_x, max_x);
		var ran_y = irandom_range(min_y, max_y);
		
		ds_list_add(list_drop_x, ran_x);
		ds_list_add(list_drop_y, ran_y);

		ds_list_add(list_drop_speed, irandom_range(drop_speed_min, drop_speed_max));
		
		var ran_inst;
		
		do {
			ran_inst = instance_find(objRainLayer, irandom_range(0,instance_number(objRainLayer)-1));
		} until (ran_inst.bbox_left < ran_x && ran_inst.bbox_right > ran_x);
		
		var ran_y_dest = irandom_range(ran_inst.y, ran_inst.y + ran_inst.sprite_height);
		ds_list_add(list_drop_y_dest, ran_y_dest);
	}

}

