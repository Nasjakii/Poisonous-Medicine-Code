
draw_self();

draw_text(x,y -50, state_display);





draw_triangle(vision_x[0],vision_y[0],vision_x[1],vision_y[1],vision_x[2],vision_y[2], true);

if target == noone exit;

if capture_timer != capture_time {
	var t = target;
	var notifier_w = bbox_right - bbox_left + 20;
	draw_rectangle(t.bbox_left - 10, t.bbox_bottom - 20,
					t.bbox_left - 10 + (capture_timer / capture_time * notifier_w), t.bbox_bottom - 20, false);
}



