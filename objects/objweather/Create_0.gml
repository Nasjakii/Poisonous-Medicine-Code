layer_set_visible("Weather",true); //So I dont have to look at the hitboxes for the rain in the editor

global.rain = false;

min_x = -10;
max_x = room_width + 10;
min_y = -100;
max_y = -10;


drop_mult = 0.01;
width = 100;


list_drop_x = ds_list_create(); 
list_drop_y = ds_list_create(); 
list_drop_speed = ds_list_create(); 

list_drop_y_dest = ds_list_create();

list_splash_x = ds_list_create();
list_splash_y = ds_list_create();
list_splash_index = ds_list_create();
