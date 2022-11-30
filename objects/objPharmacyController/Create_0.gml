
paths[0] = path_npc_pharmacy;
paths[1] = path_npc_pharmacy2;


//Desk Position for NPCs
npc_xpos[0] = 476;
npc_ypos[0] = 217;

npc_xpos[1] = 376;
npc_ypos[1] = 217;

creation_layer = "Front_layer";
queue_list = ds_list_create();

npc_count = 0;

//Path
npc_speed = 1;


//2d array for npc

npc[0,0] = objMary; //obj
npc[0,1] = 0;		//Occurance index
npc[0,2] = global.event_index > 0;   //already Walked in? (or does even need to walk in?)
npc[0,3] = false;   //completed

npc[1,0] = objPaperboy; //obj
npc[1,1] = 3;		//Occurance index
npc[1,2] = false;   //already Walked in? (or does even need to walk in?)
npc[1,3] = false;   //completed

saved_index = 0;