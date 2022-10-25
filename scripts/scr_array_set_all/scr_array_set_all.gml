// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_array_set_all(arr, val){
	var i;
	for(i = 0; i < array_length(arr); i++) {
		arr[i] = val;
	}
	
	return arr;
}