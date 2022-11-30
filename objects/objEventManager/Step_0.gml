

if instance_exists(objMary) && objMary.dialog_index > 0 && global.event_index < 1 {
	global.event_index = 1;
}

if global.event_index == 2 {
	if instance_exists(objMary) objMary.dialog_index = 3;
}