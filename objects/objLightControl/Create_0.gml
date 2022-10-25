darkness_effect = 0;

global.day_time = 0;
day_length = 24000;

light_surface = -1;

sunlight_surface = -1;
shadow_surface = -1;

list_of_lights = ds_list_create();

//get all lights
var light_elements = layer_get_all_elements("Lights");

var i;
for(i = 0; i < array_length(light_elements); i++) {
	if layer_get_element_type(light_elements[i]) == layerelementtype_instance {
		ds_list_add(list_of_lights, layer_instance_get_instance(light_elements[i]));
		
	}
}


