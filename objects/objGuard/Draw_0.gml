
draw_self();

draw_text(x,y -50, state_display);


var mid_x = (bbox_left + bbox_right) / 2;
var mid_y = (bbox_top + bbox_bottom) / 2;
draw_circle(mid_x,mid_y,vision_range, true);

if capture_timer != capture_time {
	var t = target;
	var notifier_w = bbox_right - bbox_left + 20;
	draw_rectangle(t.bbox_left - 10, t.bbox_bottom - 20,
					t.bbox_left - 10 + (capture_timer / capture_time * notifier_w), t.bbox_bottom - 20, false);
}



