
function scr_blocking_object(x1 = 0,y1 = 0,width = sprite_width, height = sprite_height){
	
	var x_offset = x1 * image_xscale;
	var y_offset = y1 * image_yscale;
	
	
	
	
	var inst = instance_create_layer(x + x_offset,y + y_offset,"Invisible", objBlockade);
	inst.image_xscale = width * image_xscale;
	inst.image_yscale = height * image_yscale;
	inst.follow = id;
	inst.follow_offset_x = x_offset;
	inst.follow_offset_y = y_offset;
}