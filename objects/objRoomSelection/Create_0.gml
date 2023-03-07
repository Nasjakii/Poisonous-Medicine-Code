
//Todo Delete//
window_set_size(display_get_width() / 3 * 2, display_get_height() / 3 * 2);
window_set_position(350,200);

ds_rooms = ds_list_create();
ds_list_add(ds_rooms, Pharmacy, Room2, PharmacyBackroom, Brewroom);


show_room_list = false;

global.continue_room = Room2;