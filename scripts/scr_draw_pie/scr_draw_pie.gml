
function scr_draw_pie(xpos, ypos, value, max_value, color, radius, alpha, width, starting_angle){
	
	
	if (value > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
	    
	    var numberofsections = 200 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360/numberofsections
	    
	    val = (value/max_value) * numberofsections 
	    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
	    
	        piesurface = surface_create(radius*2,radius*2);
	            
	        draw_set_colour(color);
	        draw_set_alpha(alpha);
	        
	        surface_set_target(piesurface);
	        
	        draw_clear_alpha(c_blue,0.7);
	        draw_clear_alpha(c_black,0);
	        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(radius, radius);
	        
	        for(i=0; i<=val; i++) {
	            len = (-i*sizeofsection) + starting_angle + 90; 
	            tx = lengthdir_x(radius, len);
	            ty = lengthdir_y(radius, len);
	            draw_vertex(radius+tx, radius+ty);
	        }
	        
	        draw_primitive_end();
	        
	        draw_set_alpha(1);
	        
	        gpu_set_blendmode(bm_subtract);
	        draw_set_colour(c_black);
	        draw_circle(radius-1, radius-1,radius-width,false);
	        gpu_set_blendmode(bm_normal);
	
	        surface_reset_target();
	     
	        draw_surface(piesurface,xpos-radius, ypos-radius);
	        
	        surface_free(piesurface);
	        
	    }
	}
}