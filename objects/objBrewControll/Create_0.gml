
//Graphik settings
display_set_gui_size(1920, 1080);

selected_bottle = 0;
fillheight = 0;
fillheight_max = 26 * objTestTube.image_yscale;

fillheight_increment = 5 * objTestTube.image_yscale;

//Ingredients
ds_bottles[0] = objPotion1;
ds_bottles[1] = objBmsIngredient;
ds_bottles[2] = objPoppyIngredient;
ds_bottles[3] = objTartarIngredient;
ds_bottles[4] = objWPIngredient;


ds_colorList = ds_list_create();
mix_color = make_color_rgb(255,255,255); //starting color = white

//cooking time
cooking = false;
cooking_time = 3 * room_speed;
cooked_timer = cooking_time;


//Notes
draw_notes = false;

//labels
label_y_gap = 2;
label_width = 32;
label_height = 10;







