
function scr_create_crafting_instance(sprite, xpos, ypos, scale = 1, array){
	
	var inst = instance_create_layer(xpos,ypos, "Instances",objCraftingInst);
	inst.sprite_index = sprite;	
	inst.image_xscale = scale;
	inst.image_yscale = scale;

	for(var i = 0; i < array_length(array); i++) {
		ds_list_add(inst.ds_list_values,array[i]);
	}
	
	
	return inst.id;
}