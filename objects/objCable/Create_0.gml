var index = 0;
var cable_tile = 64;

if instance_place(x,y-cable_tile, objCable) {
	index += 1;
}
if instance_place(x + cable_tile,y, objCable) {
	index += 2;
}
if instance_place(x,y+cable_tile, objCable) {
	index += 4;
}
if instance_place(x-cable_tile,y, objCable) {
	index += 8;
}

image_index = index;
