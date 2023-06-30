
//Test tube

ingredient_list = ds_list_create();


grabbed = false;


surface = -1;
surf_width = 250;

//test hold - instead of origin of test tube
//hold_x = 0;
//hold_y = 0;

fillcount = 0;
fillcount_max = 5;

var fillheight_gap = 10;
fillheight_increment = floor((sprite_height - fillheight_gap) / fillcount_max);

mix_color = make_color_rgb(255,255,255); //starting color = white
mix_alpha = 0;

//cooking time
cooking = false;
cooking_time = 3 * room_speed;
cooked_timer = cooking_time;