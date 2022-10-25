x = objKiller.x;
y = objKiller.y;


if keyboard_check(vk_up) {
	instance_create_layer(x,y,layer,objCameraMan);
	curr_view = "Camera";
}


//special

//curr_view = "Special";