
draw_self();
if draw_fluid {
	image_index = 1;
	draw_sprite_ext(sprPotionReadyFluid, 1, x,y, image_xscale, image_yscale, 0, mix_color, 0.8);
	
	draw_set_halign(fa_middle);
	draw_set_valign(fa_top);
	draw_set_font(foTextSmall);
	draw_text(x,y,"click to finish"); //TODO make finger that presses on the flask (as signal to click)
	scr_reset_text();
} else {
	image_index = 0;
}


