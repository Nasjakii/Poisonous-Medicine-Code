// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_views(from = "Views"){
	var elements = layer_get_all_elements(from);
	var i;
	for(i = 0; i < array_length(elements); i++) {
		if layer_get_element_type(elements[i]) == layerelementtype_instance {
			var inst = layer_instance_get_instance(elements[i]);
		
			//elsewise the destroyed instance of the special view still counts 
			if instance_exists(inst) {
				view_x[i+1] = inst.x;
				view_y[i+1] = inst.y;
				view_w[i+1] = inst.sprite_width;
				view_h[i+1] = inst.sprite_height;
			}
		}
	}
}