
scr_create_single_object(objCameraController);

scr_player_monolog_create();

scr_spawn_player();



speed_running = 7.5;
speed_walking = 4;

speedH = speed_walking;

captured = false;

sin_x = 0;


#region Items

	item_holding = -1;

#endregion

#region animations
	anim_before = "Idle";
	sprite_index = sprKillerBlankAnim;
	skeleton_skin_set(objGeneral.killer_skin);
#endregion

#region states 

	#region state Idle
	
	state_idle = function() {
		scr_debug_info("State", "Idle");
		
		set_animation("Idle");
		state = state_idle;
		
	}
	#endregion
	
	#region state climbing
		climb_height = "";
		
		state_climbing = function() {
			scr_debug_info("State", "Climbing");
		
			
			scr_climb(climb_height);
			
			
		}
	
	#endregion
	
	#region state Push
		
		state_pushing = function() {
			var check_y = y + 16;
			var check_x = x + (sign(image_xscale) * 64);
		
			scr_debug_info("State", "Push");
			
			if keyboard_check(ord("A")) && position_meeting(check_x, check_y,objPushable) {
				set_animation("Push");
				var inst = instance_place(check_x, check_y, objPushable);
				if inst != noone inst.x -= speedH / 2;
				x -= speedH / 2;
				image_xscale = -1;
		
				state = state_pushing;
			} else if keyboard_check(ord("D")) && position_meeting(check_x, check_y, objPushable) {
				set_animation("Push");
				var inst = instance_place(check_x, check_y, objPushable);
				if inst != noone inst.x += speedH / 2;
				x += speedH / 2;
				image_xscale = 1;
				state = state_pushing;
			} else {
				state = state_idle;
			}
	
			
	
	
		}

	#endregion
	
	#region Movement
		
		can_move = true;
		
		state_moving = function() {
		
			if can_move {
				if !keyboard_check(vk_shift){
					scr_debug_info("State", "Walking");
					set_animation("Walking");
					state = state_moving;
					
					speedH = speed_walking;
				} else {
					scr_debug_info("State", "Running");
					set_animation("Running");
					
					if speedH < speed_running {
						speedH += 0.1;
					}
				}
			
				if keyboard_check(ord("A")) && !position_meeting(bbox_left - speedH, bbox_bottom - 16, objBlockade) {
					x -= speedH;
					image_xscale = -1;
				} else if keyboard_check(ord("D")) && !position_meeting(bbox_right + speedH, bbox_bottom - 16, objBlockade) {
					state = state_moving;
					x += speedH;
					image_xscale = 1;
				} else {
					state = state_idle;
				} 
			} else {
				state = state_idle;
			}
		}

	#endregion

	#region state falling
		speed_falling = 5;
		falling_duration = 0;
		
		state_falling = function() {
			scr_debug_info("State", "Falling");
			
			for(var i = 0; i < speed_falling; i++) {
				if position_meeting(x,bbox_bottom+1,objBlockade) {
					y++;
					state = state_idle;
					if falling_duration > 60 {
						falling_duration = 0;
						state = state_landing;
					}
					break;
				} else {
					falling_duration++;
					set_animation("Falling");
					y++;
					x += sign(image_xscale) * 0.2;
				}
			}
		}
	#endregion
	
	#region state landing
		state_landing = function() {
			scr_debug_info("State", "Landing");
			
			set_animation("Landing");
			
					//Current frame							//last frame -1
			if skeleton_animation_get_frame(0) >= skeleton_animation_get_frames(anim_before) - 1 {
				state = state_idle;	
			}
			
		}
	#endregion
	
	#region state using
		using_item_kind = "";
							//item kind
		state_using = function() {
			scr_debug_info("State", "Using");
			
			set_animation("Items/" + using_item_kind);
			if scr_animation_end() {
				using_item_kind = "";
			}
			
			
		}
	#endregion
	
	#region state climb ledder
		state_climb_ledder = function() {
			
			scr_debug_info("State", "Climbing ledder");
			
			if keyboard_check_direct(ord("W")) {
				set_animation("Ledder Up");
				y -= 5;
			} else if keyboard_check_direct(ord("S")) {
				set_animation("Ledder Up");
				y += 5;
			}
		}
	#endregion
	
	#region state talking
		dialog_index = 0;
		name = "Jacob";
	
		dialog = 0;
		dialog_active = false;
		text_arr = scr_get_dialog("Jacob");
		monolog = false;

		state_talking = function() {
			scr_debug_info("State", "Talking");
			can_move = false;
			set_animation("Idle");
			
			if dialog_active == false {
				state = state_idle;
				can_move = true;
			}
		}
	#endregion
	
	#region state captured
		state_captured = function() {
			scr_debug_info("State", "Captured");
			can_move = false;
			
			
		}
	#endregion
	
#endregion

state = state_idle;



