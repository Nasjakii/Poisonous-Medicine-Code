function scr_map_clone(map){
	
	var json = json_encode(map);
	var clone = json_decode(json);
	return clone;
}