
var br = bbox_right * gui_rescale;
var bl = bbox_left * gui_rescale;
var bt = bbox_top * gui_rescale;
var mid = (bl + br) / 2;

var tt_width = 300;
var tt_height = 50;

for(var i = 0; i < ds_list_size(ingredient_list); i++) {
	var inst = ds_list_find_value(ingredient_list, i);
	var name = object_get_name(inst);
	draw_text(br, bt + 50 * i, "Data " + string(i) + ": " + name);
}

//cooking leiste
var left = mid - tt_width / 2;
var right = mid + tt_width / 2;
var top = bt- 50

draw_set_color(c_dkgray);
draw_rectangle(left, top, right, top - tt_height, false);
draw_set_color(c_maroon); 
draw_rectangle(left, top, right + (right - left) * -1 * objBrewControll.cooked_timer / objBrewControll.cooking_time, top - tt_height, false);


scr_reset_text();



