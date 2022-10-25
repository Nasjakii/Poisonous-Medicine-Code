function scr_event_equals(event, value){
	return ds_map_find_value(objGeneral.event_map,event) == value
}