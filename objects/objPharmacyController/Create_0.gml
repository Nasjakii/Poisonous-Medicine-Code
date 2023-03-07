
paths[0] = path_npc_pharmacy;
paths[1] = path_npc_pharmacy2; 


creation_layer = "Front_layer";
queue_list = ds_list_create();

//Path
npc_speed = 1;

#region npc vars
	npc_default[0,0] = objMary; //obj
	npc_default[0,1] = 0;		//Occurance index
	npc_default[0,2] = global.event_index > 0;   //already Walked in? (or does even need to walk in?)
	npc_default[0,3] = false;   //completed

	npc_default[1,0] = objHumphrey; //obj
	npc_default[1,1] = 2;		//Occurance index
	npc_default[1,2] = false;   //already Walked in? (or does even need to walk in?)
	npc_default[1,3] = false;   //completed
#endregion

//2d array for npc
npc = scr_load("Array", "Pharmacy","NPC", npc_default)



saved_index = 0;