
//Graphik settings
display_set_gui_size(1920, 1080);

selected_bottle = 0;
fillheight = 0;
fillheight_max = 26 * objTestTube.image_yscale;

fillheight_increment = 5 * objTestTube.image_yscale;

//Ingredients
ds_bottles[1] = objPotion1;
ds_bottles[2] = objPotion2;
ds_bottles[3] = objPotion3;
ds_bottles[4] = objPotion4;
ds_bottles[5] = objPotion5;
ds_bottles[6] = objPotion6;
ds_bottles[7] = objPotion7;
ds_bottles[8] = objPotion8;

ds_colorList = ds_list_create();

mix_color = make_color_rgb(255,255,255);

//3 seconds of cooking to be finished each time
cooking = false;
cooking_time = 3 * room_speed;
cooked_timer = cooking_time;


//Notes
draw_notes = false;







