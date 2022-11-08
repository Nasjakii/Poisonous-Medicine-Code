// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_views(from = "Views"){
	var arr = scr_get_view_array(from);
		
	for(var i = 0; i < array_length(arr); i++) {
		
		var inst = arr[i];
		//elsewise the destroyed instance of the special view still counts 
		if instance_exists(inst) {
			view_x[i+1] = inst.x;
			view_y[i+1] = inst.y;
			view_w[i+1] = inst.sprite_width;
			view_h[i+1] = inst.sprite_height;
		}
	}
	
}