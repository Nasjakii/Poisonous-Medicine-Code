
view_enabled = true;

surface_resize(application_surface, 1920, 1080);

var disp_width = display_get_width();
var disp_height = display_get_height();
display_set_gui_size(disp_width, disp_height);

//Das zu verfolgende Objekt (Stellt die View auf das Objekt)
scr_camera_killer_set(objKiller);

//Check if follow_object moved
follow_xb = global.camera_follow_object.x;
follow_yb = global.camera_follow_object.y;


//Counters the encourans of a flashing black screen in the middle of the first room because of first
//checking that player moved in new view
first_step = true; 

view_x[0] = 0;
view_y[0] = 0;
view_w[0] = 1;
view_h[0] = 1;

//Adds all Views and their values (x,y,w,h)
scr_add_views();

view_visible[0] = true;
view_camera[0] = camera_create_view(view_x[1],view_y[1],view_w[1],view_h[1]);

