



if instance_exists(objMary) && objMary.dialog_index > 0 && global.event_index < 1 {
	global.event_index = 1;
	scr_quest_set_state("Help Mary", 0);
}


if global.event_index == 2 {
	if instance_exists(objMary) {
		with(objMary) {
			dialog_index = 3;
			if interact && item_interacted_with == sprPotion1 {
				//Mary quest completed
				scr_quest_set_state("Help Mary", 1);
				objPharmacyController.npc[0,3] = true;
				
				global.event_index = 3;
				
			}
		}
	}
}


if global.event_index == 3 {
	with(objHumphrey) {
		if interact {
			scr_quest_set_state("Humphreys Headache", 0);
			global.event_index = 4;
		}
	}
}