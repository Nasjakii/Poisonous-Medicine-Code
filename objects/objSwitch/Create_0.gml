scr_create_object(false, true);



path_list = ds_list_create();
room_list = ds_list_create();

ds_list_add(path_list, p_npc_test_r3_1, p_npc_test_r3);
ds_list_add(room_list, Room3_1, Room3)

scr_path_create("npc_test", path_list, room_list, objPerson);


