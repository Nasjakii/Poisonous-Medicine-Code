

if keyboard_check(ord("A"))  {
	x -= 5
	image_xscale = 1;
} else if keyboard_check(ord("D"))  {
	x += 5
	image_xscale = -1;
} else if keyboard_check(ord("W"))  {
	y -= 5
} else if keyboard_check(ord("S"))  {
	y += 5
}


