
x += x_speed;
y += y_speed;

if place_meeting(x,y,objRainLayer) && instance_place(x,y,objRainLayer).layer == layer {
	instance_destroy(self);
	instance_create_layer(x,y,layer, objSplash);
} else if y > room_height {
	instance_destroy(self);
}
