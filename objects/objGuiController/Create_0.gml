


#region Watch

	watch_gap = 32;
	watch_arm1_rotation = 0;
	watch_arm2_rotation = 0;
	
	instance_create_depth(0,0,0,objWatch);

#endregion

#region item select 
	
	item_hovered = -1;
	
	item_circle_radius = gui_width / 6;
	
	circle_alpha = 0.75;
	circle_x = gui_width / 2;
	circle_y = gui_height / 2;
	
	

#endregion



//Book Menu Icon 
sprBookIcon_subimg = 0;

global.show_book = false;


scr_create_single_object(objBook);

