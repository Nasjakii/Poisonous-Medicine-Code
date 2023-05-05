function scr_start_message_gui(str){
	var o = objGuiController;
	
	o.gui_message_timer = 0;
	o.show_gui_message = true;
	o.gui_message = str;
}