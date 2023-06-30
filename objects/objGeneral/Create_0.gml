#region Debug
	
	draw_debug = false;
	debug_list = ds_list_create();
	
	chat = false;
	chat_width = 300;
	

#endregion


#region Player
	
	//List has to be created before scr_create_object adds instances
	list_of_collectables = ds_list_create();
	list_of_interactables = ds_list_create();
	
#endregion


//Custom cursor
window_set_cursor(cr_none);
cursor_sprite = sprCursorNew;

#region Safesystem
 
#region TODO Safesystem general
	ini_open(string(game_project_name) + "_safe.ini");

	global.screen_res_width = ini_read_real("Settings", "Screen_resolution", 1920);
	global.screen_res_height = ini_read_real("Settings", "Screen_resolution", 1080);
	global.volume = ini_read_real("Settings", "Volume", 0.5);
 
	ini_close();

	scr_safe("Real", "Game", "Checkpoint", 1);
#endregion

#region Inventory

global.inventory_size = 20; 


#endregion


#endregion


global.interactable_show_distance = 64;

global.game_step = 0;
global.rain = false;
global.day_time = 0;

#region macro

#macro l_released mouse_check_button_released(mb_left)
#macro l_press mouse_check_button_pressed(mb_left)
#macro r_released mouse_check_button_released(mb_right)
#macro debug show_debug_message(string(
#macro check show_debug_message("Check")

#macro mouse_x_gui device_mouse_x_to_gui(0)
#macro mouse_y_gui device_mouse_y_to_gui(0)
#macro gui_width display_get_gui_width()
#macro gui_height display_get_gui_height()

#endregion

#region Eventsystem

	scr_create_single_object(objEventManager)
	
	
#endregion


#region //Doormanager
	door_position_map = ds_map_create();
	
	//adding string doorID roomID xpos ypos
	scr_door_add_position(0,0,-1,-1);
	
	
#endregion





