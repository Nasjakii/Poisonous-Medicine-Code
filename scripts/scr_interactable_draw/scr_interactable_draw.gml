function scr_interactable_draw(){
	
	if draw_outline {
		scr_draw_inline();
		draw_outline = false;
	} else {
		draw_self();
	}
}