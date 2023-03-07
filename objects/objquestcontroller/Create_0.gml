
//Load all Quest states
quest_map = ds_map_create();
quest_map = scr_quest_load();

//var load_map = ds_map_secure_load("quest_data.dat");
//var load_quest_data_map = ds_map_find_value(load_map, "First_Quest");


var quest_name = "First_Quest";
scr_quest_map_create(quest_name);
scr_quest_map_add_key(quest_name, "Type", "Collect");
scr_quest_map_add_key(quest_name, "Task", "Enter your pharmacy to complete this mission.");
scr_quest_map_add_key(quest_name, "Objects", objKey);


var quest_name = "Paperboy quest";
scr_quest_map_create(quest_name);
scr_quest_map_add_key(quest_name, "Type", "Bring");
scr_quest_map_add_key(quest_name, "Task", "Bring this poor Paperboy some medicine.");

var quest_name = "Test Collection quest";
scr_quest_map_create(quest_name);
scr_quest_map_add_key(quest_name, "Type", "Collect");
scr_quest_map_add_key(quest_name, "Task", "Go to the store and buy some thing.");
scr_quest_map_add_key(quest_name, "Objects", objPoppy);

var quest_name = "Kill Bartholomew";
scr_quest_map_create(quest_name);
scr_quest_map_add_key(quest_name, "Type", "Kill");
scr_quest_map_add_key(quest_name, "Task", "Go Kill this man, i hate him so much, aww man sooooooo much.");
scr_quest_map_add_key(quest_name, "Picture", sprBartholomewHead);

var quest_name = "Help Mary";
scr_quest_map_create(quest_name);
scr_quest_map_add_key(quest_name, "Type", "Potion");
scr_quest_map_add_key(quest_name, "Task", "Make the Potion for Mary in the backroom");

var quest_name = "Humphreys Headache";
scr_quest_map_create(quest_name);
scr_quest_map_add_key(quest_name, "Type", "Collect");
scr_quest_map_add_key(quest_name, "Task", "Make the Potion for Humphrey against his headache");
scr_quest_map_add_key(quest_name, "Objects", objPoppy);



//Main Hint -> cutom bookpage part



scr_quest_save();


//Suply for others
active_quests = ds_list_create();
active_quests = scr_quest_get_all_active();



