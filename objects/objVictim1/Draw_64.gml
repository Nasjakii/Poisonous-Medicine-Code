
if hp < 100 {
	scr_show_emotion("Alerted");
	
}


//Just talk

if interact == false talking = false;

if talking == true {
	
	if hp == 100 {
		dialog = 0;
	} else if hp > 50 {
		dialog = 1;
	} else {
		dialog = 2;
	}
	
	scr_draw_dialog(text_arr[dialog]);
}
	





