function scr_event_add(name, start_value){
	//Event already exists ?
	if is_undefined(ds_map_find_value(objGeneral.event_map, name)) {
		ds_map_add(objGeneral.event_map, name, start_value);
	} else {
		scr_error("Event already exists:", name);
	}
}