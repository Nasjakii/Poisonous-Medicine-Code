


alpha_val -= 0.01;
draw_sprite_ext(sprFadingBox, 1,x,y, image_xscale, image_yscale,0,c_dkgray, alpha_val);

if alpha_val <= 0 {
	instance_destroy(self);
}
