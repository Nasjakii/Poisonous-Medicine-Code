
draw_self();
if draw_fluid {
	image_index = 1;
	draw_sprite_ext(sprPotionReadyFluid, 1, x,y, image_xscale, image_yscale, 0, mix_color, 0.8);
} else {
	image_index = 0;
}


