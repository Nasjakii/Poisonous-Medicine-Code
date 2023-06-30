#region Dialogsystem

	global.language = "English";

	language_map = ds_map_create();
	character_map[0] = ds_map_create();
	character_map[1] = ds_map_create();

	#region Tommy
		var obj_name = "Tommy";
		#region English
			//Writing			
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "Hello, I am the Paperboy.";
			dialog_content_arr[0,2] = "Here you have the newest paper!";
			
			dialog_content_arr[1,0] = "E";
			dialog_content_arr[1,1] = "Do you want anything else?";
			dialog_content_arr[1,2] = "Sorry, I cant give you another one for free...";
			dialog_content_arr[1,3] = "Have a great day, Sir";
			
			dialog_content_arr[2,0] = "F";
			dialog_content_arr[2,1] = "Could you help me with this?";

			
			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));
			
			

		#endregion
		#region German
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "Hallo, ich bin der Zeitungsjunge.";
			dialog_content_arr[0,2] = "Hier haben Sie die neueste Ausgabe!";
			
			dialog_content_arr[1,0] = "E";
			dialog_content_arr[1,1] = "Wollen Sie sonst noch etwas?"
			dialog_content_arr[1,2] = "Entschuldigen Sie, aber ich kann ihnen keine zweite kostenlos geben.";
			dialog_content_arr[1,3] = "Haben Sie noch einen schönen Tag, Sir!";
			
			dialog_content_arr[2,0] = "F";
			dialog_content_arr[2,1] = "Könntest du mir hiermit helfen?";

	
			//Adding
			ds_map_add_map(character_map[1], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		
	#endregion
	
	#region Jacob
		obj_name = "Jacob";
		#region English
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "Fuck, I am talking to my self again...";
			dialog_content_arr[0,2] = "anyways";
			
			
			//Adding
			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));


		
		#endregion
		#region German
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "Scheiße, ich rede schon wieder mit mir selbst...";
			dialog_content_arr[0,2] = "Ach egal.";
					
			//Adding
			ds_map_add_map(character_map[1], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		
	#endregion
	
	#region Bartholomew
		obj_name = "Bartholomew";
		#region English
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "1";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "2";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "3";
	
			//Adding
			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		#region German
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "1";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "2";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "3";
	
			//Adding
			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
	#endregion
	
	#region Peter
		
		var obj_name = "Peter";
		#region English
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "F";
			dialog_content_arr[0,1] = "Hello Jacob.";
			
			dialog_content_arr[1,0] = "E";
			dialog_content_arr[1,0] = "Kümmer dich bitte um die Kunden.";

			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		#region German
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "F";
			dialog_content_arr[0,1] = "Hallo Jacob.";
			
			dialog_content_arr[1,0] = "E";
			dialog_content_arr[1,0] = "Please help the customer at the counter.";
	
			//Adding
			ds_map_add_map(character_map[1], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		
		
	#endregion
	
	#region Mary
		var obj_name = "Mary";
		#region English
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "Good day Mister Ignoble! May I get something to help me sleep better? I've been having so much trouble to fall asleep lately.";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "Just something to help me sleep.";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "Thank you so much in advance!";

			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		#region German
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "Good day Mister Ignoble! May I get something to help me sleep better? I've been having so much trouble to fall asleep lately.";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "Just something to help me sleep.";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "Thank you so much in advance!";
	
			//Adding
			ds_map_add_map(character_map[1], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		
	
	#endregion

	#region Humphrey
		var obj_name = "Humphrey";
		#region English
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "H1 E";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "H2 E";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "H3 E";

			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		#region German
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "H1 G";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "H2 G";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "H3 G";
	
			//Adding
			ds_map_add_map(character_map[1], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));
		#endregion
		
	#endregion
	
	#region Humphrey
		var obj_name = "Brother1";
		#region English
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "H1 E";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "H2 E";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "H3 E";

			ds_map_add_map(character_map[0], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));

		#endregion
		#region German
	
			//Writing
			var dialog_content_arr = [];
			dialog_content_arr[0,0] = "";
			dialog_content_arr[0,1] = "H1 G";
			
			dialog_content_arr[1,0] = "";
			dialog_content_arr[1,1] = "H2 G";
			
			dialog_content_arr[2,0] = "";
			dialog_content_arr[2,1] = "H3 G";
	
			//Adding
			ds_map_add_map(character_map[1], obj_name, scr_dialog_add_array(dialog_content_arr, obj_name));
		#endregion
		
	#endregion
	
	//Adding Languages
	ds_map_add_map(language_map, "English", character_map[0]);
	ds_map_add_map(language_map, "German", character_map[1]);
	
#endregion