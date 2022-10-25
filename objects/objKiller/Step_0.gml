
state();

//Climb
if keyboard_check_pressed(ord("W")) && position_meeting(x + (sign(image_xscale) * 64), bbox_bottom - 8, objBlockade)&& 
	!position_meeting(x + (sign(image_xscale) * 64), y - 32, objBlockade) {
		
	climb_height = "Low";
	
	if position_meeting(x + (sign(image_xscale) * 64), bbox_bottom - 64 + 8, objBlockade) {
		climb_height = "Medium";
	}
	if position_meeting(x + (sign(image_xscale) * 64), y + 8, objBlockade) {
		climb_height = "High";
	}
	
	
	state = state_climbing;
} 

//Movement
if (keyboard_check(ord("A")) || keyboard_check(ord("D"))) && can_move && state != state_climbing {
	state = state_moving;
}


//Push
if (keyboard_check(ord("A")) && position_meeting(bbox_left - 16, y + 16, objPushable)) ||
   (keyboard_check(ord("D")) && position_meeting(bbox_right + 16, y + 16, objPushable)) {
	
	state = state_pushing;
	
}

//falling
if !position_meeting(x,bbox_bottom + 1, objBlockade) && !position_meeting(x,bbox_bottom + 1, objLedder2) {
	state = state_falling;
}
	
//Ledder
if position_meeting(x,y + sprite_height / 2 + 10,objLedder2) && keyboard_check(ord("W")) {
	state = state_climb_ledder;
}

if position_meeting(x,bbox_bottom,objLedder2) && keyboard_check(ord("S")) {
	state = state_climb_ledder;
}
	
	







