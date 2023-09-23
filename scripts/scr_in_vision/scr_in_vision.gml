//uses array of 3 values for vision_x and vision_y, set in step event

function scr_in_vision(target, vision_x, vision_y){
	return point_in_triangle(target.x, target.y, vision_x[0],vision_y[0],vision_x[1],vision_y[1],vision_x[2],vision_y[2]);

}